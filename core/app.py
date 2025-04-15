from flask import Flask, request, jsonify
import pickle

app = Flask(__name__)

# Load pickled objects
pt = pickle.load(open('pt.pkl', 'rb'))
anime_data = pickle.load(open('anime_data.pkl', 'rb'))
similarity_scores = pickle.load(open('similarity_scores.pkl', 'rb'))
table = pickle.load(open('table.pkl', 'rb'))

@app.route('/')
def home():
    return "Anime Recommendation System API is up!"

@app.route('/anime', methods=['GET'])
def get_anime_info():
    anime_name = request.args.get('name')
    if anime_name in anime_data['title'].values:
        info = anime_data[anime_data['title'] == anime_name].to_dict(orient='records')[0]
        return jsonify(info)
    return jsonify({'error': 'Anime not found'}), 404

# Example endpoint to get similar anime
@app.route('/recommend', methods=['GET'])
def recommend():
    anime_name = request.args.get('name')
    if anime_name not in pt.index:
        return jsonify({'error': 'Anime not found in pivot table'}), 404

    index = pt.index.get_loc(anime_name)
    scores = list(enumerate(similarity_scores[index]))
    scores = sorted(scores, key=lambda x: x[1], reverse=True)[1:6]

    recommended = []
    for i in scores:
        recommended.append(pt.index[i[0]])

    return jsonify({'recommendations': recommended})

if __name__ == '__main__':
    app.run(debug=True)

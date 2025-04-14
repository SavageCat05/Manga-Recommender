# Anime Recommendation System 🎌🤖

A personalized anime recommendation system using **neural networks** and **content-based filtering**, trained on the Kaggle "Manga, Manhwa, and Manhua Dataset".

---

## 🚀 Project Overview

This project leverages deep learning to predict anime a user might enjoy based on their historical preferences. By transforming anime tags and user interactions into dense vectors, we train a neural network that learns the hidden relationships between user tastes and anime features.

---

## 🔍 Features

- 📚 Content-based filtering using tag metadata  
- 🧠 Neural network recommender (feedforward binary classifier)  
- 🎯 User and anime embedding using averaged tag vectors  
- 📊 Evaluation metrics: Accuracy, ROC-AUC, Precision@K  
- 🌐 Ready for frontend integration via **Streamlit**  

---

## 🗂️ Project Structure

anime-recommender/  
├── anime_recommender.ipynb          # Cosine similarity + content filtering  
├── NN.ipynb                         # Neural network training  
├── NN_anshuman.ipynb                # Refined neural model  
├── user_ready_final.ipynb           # User profile generation  
├── user_relevant_infoextraction.ipynb # Metadata + tag handling  
├── README.md                        # This file  
└── requirements.txt                 # Dependencies  

---

## 🧪 Model Architecture

- **Input**: Concatenated user and anime tag vectors  
- **Hidden Layers**: Dense layers with ReLU + Dropout  
- **Output**: Sigmoid activation (like vs. not-like)  
- **Optimizer**: Adam  
- **Loss**: Binary Cross-Entropy  

---

## 📦 Setup

```bash
# Create environment
python -m venv anime-env
source anime-env/bin/activate

# Install dependencies
pip install -r requirements.txt

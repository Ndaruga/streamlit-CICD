import streamlit as st
import numpy as np
import pandas as pd


# Set the app title 
st.title('My First Streamlit App!!') 
# Add a welcome message 
st.write('Welcome to my Streamlit app!') 
# Create a text input 
user_input = st.text_input('Enter a custom message:', 'Hello, Streamlit!')
# Display the customized message 
st.write('Customized Message:', user_input)



chart_data = pd.DataFrame(
    np.random.randn(20, 3),
    columns=['a', 'b', 'c'])

st.line_chart(chart_data)
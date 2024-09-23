from flask import Flask, request, jsonify
import openai
from random import choice

app = Flask(__name__)

# OpenAI API key (replace with your own)
openai.api_key = "your-openai-api-key"

# Generate question based on course material and course plan
@app.route('/generate_question', methods=['POST'])
def generate_question():
    data = request.get_json()
    course_plan = data.get('course_plan')
    course_material = data.get('course_material')
    
    # Generate question using OpenAI
    prompt = f"Generate a challenging question based on this course plan: {course_plan} and course material: {course_material}"
    
    response = openai.Completion.create(
        engine="text-davinci-003",
        prompt=prompt,
        max_tokens=50
    )
    
    question = response.choices[0].text.strip()
    return jsonify({'question': question})

# AI assigns random students and checks their performance
@app.route('/assign_question', methods=['POST'])
def assign_question():
    data = request.get_json()
    students = data.get('students')  # List of students with their roll numbers
    question = data.get('question')

    # Randomly assign two students
    selected_students = choice(students), choice(students)

    return jsonify({'students_assigned': selected_students, 'question': question})

# Endpoint to suggest punishment for incorrect answers
@app.route('/suggest_punishment', methods=['POST'])
def suggest_punishment():
    data = request.get_json()
    answer = data.get('answer')

    if not answer_correct(answer):
        punishment = "Write a 500-word essay on the topic."
    else:
        punishment = "No punishment, well done!"

    return jsonify({'punishment': punishment})

def answer_correct(answer):
    # Placeholder logic for evaluating answers
    return answer.lower() in ["correct", "right"]

if __name__ == '__main__':
    app.run(debug=True)

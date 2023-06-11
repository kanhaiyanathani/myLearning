### General State of ChatGPT like system(RLHF):
- https://www.youtube.com/watch?v=bZQun8Y4L2A&ab_channel=MicrosoftDeveloper
<img width="1685" alt="image" src="https://github.com/kanhaiyanathani/myLearning/assets/17162465/586d4201-ebe4-451d-bbfa-708c642cc345">

#### 1. Pre-training- Transformer model(next word prediction)
<img width="441" alt="image" src="https://github.com/kanhaiyanathani/myLearning/assets/17162465/a28986c8-62a9-4081-9460-173bd5728856">

- With GPT-2, we discovered that it can be tricked to perform prompting task:
<img width="1168" alt="image" src="https://github.com/kanhaiyanathani/myLearning/assets/17162465/89e1dc8d-d927-4abe-af3e-38255eae5106">  
<img width="911" alt="image" src="https://github.com/kanhaiyanathani/myLearning/assets/17162465/b25f77d5-0f4b-4dfe-938a-2039a336c09f">

#### 2. SFT(Supervised Fine-Tuned)
- Trained on a smaller but high quality prompt-response data set
 <img width="935" alt="image" src="https://github.com/kanhaiyanathani/myLearning/assets/17162465/8bf1e39b-0c02-42d1-a141-a46c00fffe6f">

#### 3. RM(Reward Model)
- Instead of manual reward, its being modelled 
<img width="1054" alt="image" src="https://github.com/kanhaiyanathani/myLearning/assets/17162465/e8816e5d-23b4-49b9-9f2f-3ea689a68f13">
- This is based on transformer model again
<img width="1056" alt="image" src="https://github.com/kanhaiyanathani/myLearning/assets/17162465/8f0d618e-a2ad-4046-b399-ef23ccd4bbc7">

#### 4. RL(Reinforcement Learning)
- Its a PPO(proximal policy optimization) step, where it tries to maximize the reward for a perticular response
- The reward is used in the loss function, to either penalise or reward certain training example
<img width="1143" alt="image" src="https://github.com/kanhaiyanathani/myLearning/assets/17162465/4f8f10b2-6968-4a18-a464-330642110ef8">


### Instruct GPT: 
- https://openai.com/research/instruction-following#sample4
- Pre-Trained -> SFT -> Reward -> RL 
<img width="1218" alt="image" src="https://github.com/kanhaiyanathani/myLearning/assets/17162465/08c6078d-79fe-47ed-98a8-8a9e34b3d3cb">

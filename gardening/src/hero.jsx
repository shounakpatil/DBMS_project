import { Paper, Button } from '@mui/material';
import img1 from './assets/plant.jpg'
import React from 'react'
import './index.css';
const hero = () => {
    const data=[
        {
          "name": "Monstera Deliciosa",
          "image": {img1},
          "description": "Monstera Deliciosa, also known as the Swiss cheese plant, is a popular indoor plant known for its large, glossy leaves with natural holes. It's easy to care for and thrives in bright, indirect light. This tropical plant adds a lush, exotic touch to any room."
        },
        {
          "name": "Aloe Vera",
          "image": "",
          "description": "Aloe Vera is a hardy succulent plant known for its medicinal properties. Its gel is used to soothe burns and promote healing. Aloe prefers bright, sunny locations and requires minimal watering, making it a great low-maintenance plant."
        },
        {
          "name": "Peace Lily",
          "image": "https://ehttps://media.istockphoto.com/id/1302923231/photo/blooming-white-flowers-spathiphyllum.jpg?s=612x612&w=0&k=20&c=kj5tEEcX3ri9dEeNXY_Wq9KmaEm6bCn1TZLhwVrfyNQ=xample.com/peace-lily.jpg",
          "description": "The Peace Lily is a beautiful indoor plant known for its striking white flowers and glossy green leaves. It thrives in low light and helps purify the air. Peace Lilies are easy to care for, requiring moderate watering and indirect sunlight."
        },
        {
          "name": "Snake Plant",
          "image": "https://media.istockphoto.com/id/1268045137/photo/potted-snake-plants-inside-a-beautiful-new-flat-or-apartment.jpg?s=612x612&w=0&k=20&c=UX79enZ3Rn2jX5labxi_u2Y0s4X3lfOPfr_UG91yego=",
          "description": "Snake Plant, also known as Sansevieria, is one of the most resilient houseplants. It can survive in low light and requires little water. Known for its upright, sword-like leaves, it adds a modern aesthetic to any space while also improving air quality."
        },
        {
          "name": "Spider Plant",
          "image": "https://media.istockphoto.com/id/1268045137/photo/potted-snake-plants-inside-a-beautiful-new-flat-or-apartment.jpg?s=612x612&w=0&k=20&c=UX79enZ3Rn2jX5labxi_u2Y0s4X3lfOPfr_UG91yego=",
          "description": "Spider Plants are fast-growing and easy to care for, making them perfect for beginners. Their long, arching leaves create a cascading effect, making them ideal for hanging baskets. Spider plants thrive in indirect light and are known for their ability to filter indoor air."
        }
      ]
      
  return (
    <div className="w-3/4 m-auto">hero
         <div className="mt-20">
         {
  data.map((d, index) => (
    <div className="bg-green-500 h-[450px] text-white rounded-xl" key={index} >
      <div className="h-56 rounded-t-xl bg-green-500 flex justify-center items-center">
        <img src={d.image} alt="" className="h-44 w-44 rounded-full" />
      </div>
      <div className="flex flex-col justify-center items-center gap-4 p-4">
      <p className="text-xl font-semibold">{d.name}</p>
      <p>{d.description}</p>
      <button className='bg-green-500 text-white text-lg px-6 py-1'>Read More</button>
      </div>
    </div>
  ))
}

         </div>
    
    </div>
  )
}

export default hero
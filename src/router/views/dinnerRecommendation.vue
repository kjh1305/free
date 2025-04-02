<template>
  <div class="food-recommendation-container">
    <h2 class="recommendation-title">오늘 뭐 먹지? 추천 메뉴! 🍜</h2>
    <div v-if="recommendations.length > 0" class="recommendation-list">
      <!-- Loop through each food recommendation -->
      <div
          v-for="food in recommendations"
          :key="food.id"
          class="food-card"
          @click="selectFood(food)"
      >
        <img :src="food.imageUrl" :alt="food.name" class="food-image" />
        <div class="food-info">
          <h3 class="food-name">{{ food.name }}</h3>
          <p class="food-description">{{ food.description }}</p>
          <span v-if="food.isSpicy" class="badge spicy-badge">매콤🔥</span>
          <span v-if="food.isVegetarian" class="badge veg-badge">채식🌱</span>
        </div>
      </div>
    </div>
    <div v-else class="no-recommendations">
      <p>앗! 지금은 추천 메뉴를 불러올 수 없어요. 😥</p>
    </div>
  </div>
</template>

<script>
export default {
  name: 'FoodRecommendation', // Optional: Component name
  data() {
    // Reactive data properties go here
    return {
      recommendations: [
        {
          id: 1,
          name: '김치찌개',
          description: '얼큰하고 시원한 한국인의 소울푸드',
          imageUrl: 'https://images.unsplash.com/photo-1603899160049-99796210df4f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8JUVEJTlCJTgwJUVDJUI5JTk4JTIwJUVCJUIw찌개fGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60', // Replace with actual image URLs
          isSpicy: true,
          isVegetarian: false,
        },
        {
          id: 2,
          name: '비빔밥',
          description: '다양한 채소와 고추장의 완벽 조화',
          imageUrl: 'https://images.unsplash.com/photo-1584278858097-59d48c7e134b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8JUVCJUI5JTg0JUVCJUI5JTg0JUJBJUIwfGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60',
          isSpicy: true, // Can be adjusted based on sauce
          isVegetarian: true, // Typically yes, but can contain meat
        },
        {
          id: 3,
          name: '된장찌개',
          description: '구수하고 든든한 집밥의 정석',
          imageUrl: 'https://images.unsplash.com/photo-1645150618750-f76a27a1e50b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8JUVCJThGJTk4JUVDJTlEJUE1JTIwJUVCJUIw찌개fGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60',
          isSpicy: false,
          isVegetarian: false, // Often contains meat/seafood broth
        },
        {
          id: 4,
          name: '신선한 샐러드',
          description: '가볍고 건강하게 즐기는 한 끼',
          imageUrl: 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2FsYWR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=400&q=60',
          isSpicy: false,
          isVegetarian: true,
        },
        {
          id: 5,
          name: '떡볶이',
          description: '매콤달콤 멈출 수 없는 중독성',
          imageUrl: 'https://images.unsplash.com/photo-1604467707657-1d4db95338e7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8JUVEJUExJTgxJUJEJUFEJUIxfGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60',
          isSpicy: true,
          isVegetarian: true, // Usually, but check fish cakes
        },
      ],
    };
  },
  methods: {
    // Methods used by the component go here
    selectFood(food) {
      // Placeholder for what happens when a card is clicked
      // You could navigate to a details page, show a modal, etc.
      // 'this' is implicitly bound to the component instance here
      console.log('선택한 메뉴:', food.name);
      alert(`오늘 점심은 ${food.name} 어떠세요?`);

      // If you needed to access data properties, you'd use 'this.recommendations'
      // console.log(this.recommendations.length);
    },
    // Add other methods here if needed
  },
  // You can add other Options API properties like computed, watch, mounted, etc. here
  // mounted() {
  //   console.log('FoodRecommendation component mounted!');
  //   // Fetch data from API here, for example:
  //   // this.fetchRecommendations();
  // }
};
</script>

<style scoped>
/* --- Base Container --- */
.food-recommendation-container {
  font-family: 'Noto Sans KR', sans-serif; /* Example Font */
  max-width: 1200px;
  margin: 30px auto;
  padding: 25px;
  background-color: #f8f9fa; /* Light background */
  border-radius: 12px;
  box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
}

/* --- Title --- */
.recommendation-title {
  text-align: center;
  font-size: 1.8rem;
  font-weight: 600;
  color: #e67e22; /* Warm color */
  margin-bottom: 30px;
}

/* --- List Layout (using Flexbox for responsiveness) --- */
.recommendation-list {
  display: flex;
  flex-wrap: wrap; /* Allow items to wrap to the next line */
  gap: 25px; /* Spacing between cards */
  justify-content: center; /* Center items horizontally */
}

/* --- Individual Card Styling --- */
.food-card {
  background-color: #ffffff;
  border-radius: 10px;
  overflow: hidden; /* Keeps image corners rounded */
  box-shadow: 0 3px 8px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
  cursor: pointer;
  width: 280px; /* Adjust width as needed */
  display: flex;
  flex-direction: column; /* Stack image and info vertically */
}

.food-card:hover {
  transform: translateY(-5px); /* Lift effect on hover */
  box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
}

/* --- Image --- */
.food-image {
  width: 100%;
  height: 180px; /* Fixed height for consistency */
  object-fit: cover; /* Cover the area, cropping if necessary */
  display: block; /* Remove extra space below image */
}

/* --- Text Info Section --- */
.food-info {
  padding: 15px;
  flex-grow: 1; /* Allows info section to fill remaining space */
  display: flex;
  flex-direction: column;
}

.food-name {
  font-size: 1.25rem;
  font-weight: 600;
  color: #343a40;
  margin-top: 0;
  margin-bottom: 8px;
}

.food-description {
  font-size: 0.9rem;
  color: #6c757d;
  line-height: 1.4;
  margin-bottom: 12px;
  flex-grow: 1; /* Pushes badges to the bottom */
}

/* --- Badges --- */
.badge {
  display: inline-block;
  padding: 4px 8px;
  font-size: 0.75rem;
  font-weight: 500;
  border-radius: 4px;
  margin-right: 6px;
  margin-top: auto; /* Pushes badges to the bottom */
}

.spicy-badge {
  background-color: #dc3545; /* Red for spicy */
  color: white;
}

.veg-badge {
  background-color: #28a745; /* Green for vegetarian */
  color: white;
}

/* --- No Recommendations Message --- */
.no-recommendations {
  text-align: center;
  padding: 40px 20px;
  color: #6c757d;
  font-size: 1.1rem;
}

/* --- Responsive Adjustments (Optional Example) --- */
@media (max-width: 600px) {
  .food-card {
    width: calc(90% - 20px); /* Make cards wider on small screens */
  }
  .recommendation-title {
    font-size: 1.5rem;
  }
}
</style>
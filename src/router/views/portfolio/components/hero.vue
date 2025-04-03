<script>
export default {
  name: "hero"
}
</script>

<template>
  <section class="hero">
    <div class="hero-container">
      <div class="hero-image">
        <img src="your-image.jpg" alt="Your Image">  <!-- 이미지 경로 변경 -->
      </div>
      <div class="hero-content">
        <h1>Hello, I'm Your Name</h1>  <!-- 이름 변경 -->
        <p>A passionate backend developer.</p>  <!-- 자기소개 변경 -->
        <button class="cta-button">View My Projects</button>  <!-- 버튼 텍스트 및 링크 변경 -->
      </div>
    </div>
  </section>
</template>

<style scoped lang="scss">
.hero {
  background-color: #f0f8ff; /* 배경색 (원하는 색상으로 변경) */
  padding: 100px 0;
  text-align: center;
}

/* Hero 컨테이너 */
.hero-container {
  display: flex;
  justify-content: center;
  align-items: center;
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
}

/* Hero 이미지 */
.hero-image {
  width: 300px; /* 이미지 크기 조절 */
  margin-right: 50px;
}

.hero-image img {
  width: 100%;
  border-radius: 50%; /* 원형 이미지 */
}

/* Hero 내용 */
.hero-content {
  text-align: left;
}

.hero-content h1 {
  font-size: 36px;
  font-weight: bold;
  margin-bottom: 20px;
}

.hero-content p {
  font-size: 18px;
  color: #555;
  margin-bottom: 30px;
}

/* CTA 버튼 */
.cta-button {
  background-color: #007bff; /* 버튼 색상 (원하는 색상으로 변경) */
  color: #fff;
  font-size: 16px;
  padding: 12px 24px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.cta-button:hover {
  background-color: #0056b3; /* hover 시 버튼 색상 변경 (원하는 색상으로 변경) */
}

/* 반응형 스타일 */
@media (max-width: 768px) {
  .hero-container {
    flex-direction: column;
    text-align: center;
  }

  .hero-image {
    margin: 0 0 30px;
  }

  .hero-content {
    text-align: center;
  }
}
</style>
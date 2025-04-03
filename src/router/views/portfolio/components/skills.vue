<script>
export default {
  name: "skills"
}
</script>

<template>
  <section class="skills">
    <div class="skills-container">
      <h2>Skills</h2>
      <div class="skill-list">
        <div class="skill-item">
          <img src="" alt="JavaScript">  <!-- 이미지 경로 변경 -->
          <span>JavaScript</span>
        </div>
        <div class="skill-item">
          <img src="" alt="Vue.js">  <!-- 이미지 경로 변경 -->
          <span>Vue.js</span>
        </div>
        <div class="skill-item">
          <img src="" alt="Node.js">  <!-- 이미지 경로 변경 -->
          <span>Node.js</span>
        </div>
        <div class="skill-item">
          <img src="" alt="Express">  <!-- 이미지 경로 변경 -->
          <span>Express</span>
        </div>
        <div class="skill-item">
          <img src="" alt="MongoDB">  <!-- 이미지 경로 변경 -->
          <span>MongoDB</span>
        </div>
        <!-- 스킬 항목 추가 -->
      </div>
    </div>
  </section>
</template>

<style scoped lang="scss">
.skills {
  background-color: #f8f9fa; /* 배경색 (원하는 색상으로 변경) */
  padding: 80px 0;
  text-align: center;
}

/* Skills 컨테이너 */
.skills-container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
}

/* 제목 */
h2 {
  font-size: 32px;
  font-weight: bold;
  margin-bottom: 50px;
}

/* 스킬 목록 */
.skill-list {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
}

/* 스킬 항목 */
.skill-item {
  width: 200px;
  margin: 20px;
  text-align: center;
}

.skill-item img {
  width: 80px; /* 이미지 크기 조절 */
  margin-bottom: 10px;
}

.skill-item span {
  font-size: 16px;
  color: #333;
}

/* 반응형 스타일 */
@media (max-width: 768px) {
  .skill-item {
    width: 150px;
    margin: 10px;
  }

  .skill-item img {
    width: 60px;
  }

  .skill-item span {
    font-size: 14px;
  }
}
</style>
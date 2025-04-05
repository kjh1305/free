<script>
export default {
  name: "about"
}
</script>

<template>
  <transition name="fade">
    <section class="about">
      <div class="about-container">
        <h2>About Me</h2>
        <p>
          안녕하세요! 백엔드 개발자를 꿈꾸는 Your Name 입니다.  <!-- 이름 변경 -->
          끊임없이 배우고 성장하며, 사용자에게 가치있는 서비스를 제공하는 개발자가 되기 위해 노력하고 있습니다.
        </p>
        <div class="details">
          <div class="detail-item">
            <strong>이름:</strong> Your Name  <!-- 이름 변경 -->
          </div>
          <div class="detail-item">
            <strong>생년월일:</strong> YYYY.MM.DD  <!-- 생년월일 변경 -->
          </div>
          <div class="detail-item">
            <strong>연락처:</strong> 010-XXXX-XXXX  <!-- 연락처 변경 -->
          </div>
          <div class="detail-item">
            <strong>이메일:</strong> your_email@example.com  <!-- 이메일 변경 -->
          </div>
        </div>
        <div class="skills">
          <h3>Skills</h3>
          <div class="skill-list">
            <span>JavaScript</span>
            <span>Vue.js</span>
            <span>Node.js</span>
            <span>Express</span>
            <span>MongoDB</span>
            <!-- 스킬 목록 추가 -->
          </div>
        </div>
      </div>
    </section>
  </transition>
</template>

<style scoped lang="scss">
.about {
  background-color: #fff; /* 배경색 (원하는 색상으로 변경) */
  padding: 80px 0;
}

/* About 컨테이너 */
.about-container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
  text-align: center;
}

/* 제목 */
h2 {
  font-size: 32px;
  font-weight: bold;
  margin-bottom: 30px;
}

/* 자기소개 */
p {
  font-size: 18px;
  color: #555;
  line-height: 1.6;
  margin-bottom: 40px;
}

/* 상세 정보 */
.details {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  margin-bottom: 40px;
}

.detail-item {
  width: 300px;
  margin: 10px;
  text-align: left;
}

.detail-item strong {
  font-weight: bold;
  margin-right: 10px;
}

/* 스킬 */
.skills {
  text-align: left;
}

h3 {
  font-size: 24px;
  font-weight: bold;
  margin-bottom: 20px;
}

/* 스킬 목록 */
.skill-list {
  display: flex;
  flex-wrap: wrap;
}

.skill-list span {
  background-color: #e9ecef; /* 스킬 배경색 (원하는 색상으로 변경) */
  padding: 8px 16px;
  border-radius: 20px;
  margin: 5px;
  font-size: 14px;
  color: #333;
}

/* 반응형 스타일 */
@media (max-width: 768px) {
  .detail-item {
    width: 100%;
    text-align: center;
  }

  .skill-list {
    justify-content: center;
  }
}

/* 페이드인 애니메이션 */
.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.5s;
}

.fade-enter-from,
.fade-leave-to {
  opacity: 0;
}
</style>
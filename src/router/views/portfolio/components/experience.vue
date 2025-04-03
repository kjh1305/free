<script>
import ExperienceCard from "@/router/views/portfolio/components/experienceCard.vue";

export default {
  name: "experience",
  components: {
    ExperienceCard,
  },
  data() {
    return {
      experiences: [
        {
          id: 1,
          company: 'Company Name',  // 회사명 변경
          position: 'Position',  // 직책 변경
          period: 'YYYY.MM - YYYY.MM',  // 근무 기간 변경
          description: '주요 업무 내용',  // 업무 내용 변경
        },
        {
          id: 2,
          company: 'Company Name',  // 회사명 변경
          position: 'Position',  // 직책 변경
          period: 'YYYY.MM - YYYY.MM',  // 근무 기간 변경
          description: '주요 업무 내용',  // 업무 내용 변경
        },
        // 경력 항목 추가
      ],
    };
  },
}
</script>

<template>
  <section class="experience">
    <div class="experience-container">
      <h2>Experience</h2>
      <div class="experience-list">
        <ExperienceCard
            v-for="experience in experiences"
            :key="experience.id"
            :experience="experience"
        />
      </div>
    </div>
  </section>
</template>

<style scoped lang="scss">
.experience {
  background-color: #fff; /* 배경색 (원하는 색상으로 변경) */
  padding: 80px 0;
}

/* Experience 컨테이너 */
.experience-container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
}

/* 제목 */
h2 {
  font-size: 32px;
  font-weight: bold;
  margin-bottom: 50px;
  text-align: center;
}

/* 경력 목록 */
.experience-list {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
}
</style>
<script>
import EducationCard from "@/router/views/portfolio/components/educationCard.vue";

export default {
  name: "education",
  components: {
    EducationCard,
  },
  data() {
    return {
      educations: [
        {
          id: 1,
          school: 'School Name',  // 학교명 변경
          major: 'Major',  // 전공 변경
          period: 'YYYY.MM - YYYY.MM',  // 재학 기간 변경
          description: '설명',  // 설명 변경 (선택 사항)
        },
        {
          id: 2,
          school: 'School Name',  // 학교명 변경
          major: 'Major',  // 전공 변경
          period: 'YYYY.MM - YYYY.MM',  // 재학 기간 변경
          description: '설명',  // 설명 변경 (선택 사항)
        },
        // 학력 항목 추가
      ],
    };
  },
}
</script>

<template>
  <section class="education">
    <div class="education-container">
      <h2>Education</h2>
      <div class="education-list">
        <EducationCard
            v-for="education in educations"
            :key="education.id"
            :education="education"
        />
      </div>
    </div>
  </section>
</template>

<style scoped lang="scss">
.education {
  background-color: #f8f9fa; /* 배경색 (원하는 색상으로 변경) */
  padding: 80px 0;
}

/* Education 컨테이너 */
.education-container {
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

/* 학력 목록 */
.education-list {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
}
</style>
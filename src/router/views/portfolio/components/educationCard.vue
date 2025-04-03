<script>
export default {
  name: "educationCard",
  props: {
    education: {
      type: Object,
      required: true,
    },
  },
}
</script>

<template>
  <div class="education-card">
    <h3>{{ education.school }}</h3>
    <p class="major">{{ education.major }}</p>
    <p class="period">{{ education.period }}</p>
    <p class="description">{{ education.description }}</p>
  </div>
</template>

<style scoped lang="scss">
.education-card {
  width: 300px;
  margin: 20px;
  padding: 20px;
  border: 1px solid #ddd; /* 테두리 (원하는 스타일로 변경) */
  border-radius: 5px;
  text-align: left;
}

.education-card h3 {
  font-size: 20px;
  font-weight: bold;
  margin-bottom: 10px;
}

.education-card .major {
  font-size: 16px;
  color: #555;
  margin-bottom: 5px;
}

.education-card .period {
  font-size: 14px;
  color: #777;
  margin-bottom: 10px;
}

.education-card .description {
  font-size: 14px;
  color: #333;
  line-height: 1.4;
}
</style>
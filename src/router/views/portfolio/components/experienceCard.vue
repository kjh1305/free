<script>
export default {
  name: "experienceCard",
  props: {
    experience: {
      type: Object,
      required: true,
    },
  },
}
</script>

<template>
  <div class="experience-card">
    <h3>{{ experience.company }}</h3>
    <p class="position">{{ experience.position }}</p>
    <p class="period">{{ experience.period }}</p>
    <p class="description">{{ experience.description }}</p>
  </div>
</template>

<style scoped lang="scss">
.experience-card {
  width: 300px;
  margin: 20px;
  padding: 20px;
  border: 1px solid #ddd; /* 테두리 (원하는 스타일로 변경) */
  border-radius: 5px;
  text-align: left;
}

.experience-card h3 {
  font-size: 20px;
  font-weight: bold;
  margin-bottom: 10px;
}

.experience-card .position {
  font-size: 16px;
  color: #555;
  margin-bottom: 5px;
}

.experience-card .period {
  font-size: 14px;
  color: #777;
  margin-bottom: 10px;
}

.experience-card .description {
  font-size: 14px;
  color: #333;
  line-height: 1.4;
}
</style>
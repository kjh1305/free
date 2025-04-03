<script>
export default {
  name: "projectCard",
  props: {
    project: {
      type: Object,
      required: true,
    },
  },
}
</script>

<template>
  <router-link :to="`/projects/${project.id}`" class="project-card">
  <img :src="project.image" :alt="project.title">
  <h3>{{ project.title }}</h3>
  <p>{{ project.description }}</p>
</router-link>
</template>

<style scoped lang="scss">
.project-card {
  width: 300px;
  margin: 20px;
  padding: 20px;
  border: 1px solid #ddd;
  border-radius: 5px;
  text-align: left;
  text-decoration: none; /* 링크 스타일 제거 */
  color: inherit; /* 링크 색상 제거 */
}

.project-card img {
  width: 100%;
  margin-bottom: 10px;
}

.project-card h3 {
  font-size: 20px;
  font-weight: bold;
  margin-bottom: 10px;
}

.project-card p {
  font-size: 14px;
  color: #333;
  line-height: 1.4;
}
</style>
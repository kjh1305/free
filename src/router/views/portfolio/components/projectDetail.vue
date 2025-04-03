<script>
export default {
  name: "projectDetail",
  props: {
    id: {
      type: String,
      required: true,
    },
  },
  computed: {
    project() {
      // projects 데이터에서 id 에 해당하는 프로젝트를 찾아서 반환
      return this.projects.find((project) => project.id === parseInt(this.id));
    },
  },
  data() {
    return {
      projects: [
        {
          id: 1,
          title: 'Project Title 1',
          description: 'Project Description 1',
          image: 'project1.jpg',
        },
        {
          id: 2,
          title: 'Project Title 2',
          description: 'Project Description 2',
          image: 'project2.jpg',
        },
      ],
    };
  },
}
</script>

<template>
  <div class="project-detail">
    <h1>{{ project.title }}</h1>
    <img :src="project.image" :alt="project.title">
    <p>{{ project.description }}</p>
    <p>프로젝트 ID: {{ id }}</p>
    <!-- 추가적인 프로젝트 상세 정보 -->
  </div>
</template>

<style scoped lang="scss">
.project-detail {
  padding: 20px;
}

.project-detail h1 {
  font-size: 24px;
  font-weight: bold;
  margin-bottom: 10px;
}

.project-detail img {
  width: 100%;
  margin-bottom: 10px;
}

.project-detail p {
  font-size: 16px;
  color: #333;
  line-height: 1.4;
}
</style>
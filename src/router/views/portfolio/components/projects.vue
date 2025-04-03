<script>
import ProjectCard from "@/router/views/portfolio/components/projectCard.vue";

export default {
  name: "projects",
  components: {
    ProjectCard,
  },
  data() {
    return {
      projects: [
        {
          id: 1,
          title: 'Project Title',
          description: 'Project Description',
          image: 'project1.jpg',
        },
        {
          id: 2,
          title: 'Project Title',
          description: 'Project Description',
          image: 'project2.jpg',
        },
        // 프로젝트 정보 추가
      ],
    };
  },
}
</script>

<template>
  <section class="projects">
    <div class="projects-container">
      <h2>Projects</h2>
      <div class="project-list">
        <ProjectCard
            v-for="project in projects"
            :key="project.id"
            :project="project"
        />
      </div>
    </div>
  </section>
</template>

<style scoped lang="scss">
.projects {
  background-color: #fff; /* 배경색 (원하는 색상으로 변경) */
  padding: 80px 0;
}

.projects-container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
}

h2 {
  font-size: 32px;
  font-weight: bold;
  margin-bottom: 50px;
  text-align: center;
}

.project-list {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
}
</style>
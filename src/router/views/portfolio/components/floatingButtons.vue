<script>
export default {
  name: "floatingButtons",
  data() {
    return {
      email: 'your_email@example.com', // 실제 이메일 주소로 변경
      showEmail: false,
    };
  },
  computed: {
    tooltipStyle() {
      return {
        right: this.isTooltipOverflowing ? '0' : 'auto', // 툴팁이 넘치면 오른쪽 정렬
        left: this.isTooltipOverflowing ? 'auto' : '50%', // 툴팁이 넘치면 왼쪽 정렬 해제
        transform: this.isTooltipOverflowing ? 'none' : 'translateX(-50%)', // 툴팁이 넘치면 translateX 해제
      };
    },
    isTooltipOverflowing() {
      // 툴팁이 화면을 벗어나는지 확인하는 로직
      const buttonRect = this.$el.getBoundingClientRect();
      const tooltipWidth = 150; // 툴팁 너비 (추정치, 실제 값에 맞게 수정)
      const screenWidth = window.innerWidth;

      return buttonRect.right + tooltipWidth / 2 > screenWidth; // 오른쪽으로 넘치는지 확인
    },
  },
  methods: {
    scrollToTop() {
      window.scrollTo({
        top: 0,
        behavior: 'smooth',
      });
    },
    copyEmail() {
      navigator.clipboard.writeText(this.email);
      alert('이메일 주소가 복사되었습니다!'); // 복사 완료 알림 (선택 사항)
    },
  },
}
</script>

<template>
  <div class="floating-buttons">
    <button @click="scrollToTop" class="floating-button">
      <i class="fas fa-arrow-up"></i>
    </button>
    <button
        class="floating-button email-button"
        @mouseover="showEmail = true"
        @mouseleave="showEmail = false"
        @click.stop="copyEmail"
    >
      <i class="fas fa-envelope"></i>
      <span v-if="showEmail" class="email-tooltip" :style="tooltipStyle">{{ email }}</span>
    </button>
  </div>
</template>

<style scoped lang="scss">
.floating-buttons {
  position: fixed;
  bottom: 20px;
  right: 20px;
  display: flex;
  flex-direction: column;
  z-index: 999;
}

.floating-button {
  width: 50px;
  height: 50px;
  border-radius: 50%;
  background-color: #007bff;
  color: white;
  font-size: 20px;
  display: flex;
  justify-content: center;
  align-items: center;
  margin-bottom: 10px;
  border: none;
  cursor: pointer;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
  transition: background-color 0.3s ease;
  position: relative; /* Tooltip 위치 기준 설정 */
}

.floating-button:hover {
  background-color: #0056b3;
}

.email-tooltip {
  position: absolute;
  bottom: 60px; /* 버튼 바로 위에 표시 */
  background-color: rgba(0, 0, 0, 0.8);
  color: white;
  padding: 5px 10px;
  border-radius: 5px;
  font-size: 12px;
  white-space: nowrap; /* 줄바꿈 방지 */
  z-index: 1;
  pointer-events: none; /* 툴팁 영역 클릭 무시 */
}
</style>
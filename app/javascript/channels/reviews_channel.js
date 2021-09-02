import consumer from "./consumer";

const initReviewsCable = () => {
  const reviewsContainer = document.getElementById('reviews-container');
  const reviewCount = document.getElementById('review-count');
  if (reviewsContainer) {
    const id = reviewsContainer.dataset.reportId;
    console.log(id);

    consumer.subscriptions.create({ channel: "ReviewsChannel", id: id }, {
      received(data) {
        reviewsContainer.insertAdjacentHTML('beforeend', data.partial);
        reviewCount.innerText = data.review_count
         // called when data is broadcast in the cable

      },
    });
  }
}

export { initReviewsCable };

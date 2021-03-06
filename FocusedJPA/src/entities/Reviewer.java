package entities;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Reviewer {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private int age;
	private String gender;
	private String password;
	private String username;
	@Column(name = "photo_url")
	private String photoUrl;
	@Column(name = "points")
	private int points;

	@OneToMany(mappedBy = "reviewer")
	private Set<ReviewerReward> reviewerRewards;

	@OneToMany(mappedBy = "reviewer", fetch = FetchType.EAGER, cascade = CascadeType.PERSIST)
	private Set<FeatureReview> featureReviews;

	public Reviewer() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getAge() {
		return this.age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Set<FeatureReview> getFeatureReviews() {
		return this.featureReviews;
	}

	public void setFeatureReviews(Set<FeatureReview> featureReviews) {
		this.featureReviews = featureReviews;
	}

	public FeatureReview addFeatureReview(FeatureReview featureReview) {
		getFeatureReviews().add(featureReview);
		featureReview.setReviewer(this);

		return featureReview;
	}

	public FeatureReview removeFeatureReview(FeatureReview featureReview) {
		getFeatureReviews().remove(featureReview);
		featureReview.setReviewer(null);

		return featureReview;
	}

	public String getPhotoUrl() {
		return photoUrl;
	}

	public void setPhotoUrl(String photoUrl) {
		this.photoUrl = photoUrl;
	}

	public int getPoints() {
		return points;
	}

	public void setPoints(int points) {
		this.points = points;
	}

	public Set<ReviewerReward> getReviewerRewards() {
		return reviewerRewards;
	}

	public void setReviewerRewards(Set<ReviewerReward> reviewerRewards) {
		this.reviewerRewards = reviewerRewards;
	}

	public ReviewerReward addReviewerReward(ReviewerReward reviewerReward) {
		getReviewerRewards().add(reviewerReward);
		reviewerReward.setReviewer(this);

		return reviewerReward;
	}

	public ReviewerReward removeReviewerReward(ReviewerReward reviewerReward) {
		getReviewerRewards().remove(reviewerReward);
		reviewerReward.setReviewer(null);

		return reviewerReward;
	}

	@Override
	public String toString() {
		return "Reviewer [id=" + id + ", age=" + age + ", gender=" + gender + ", password=" + password + ", username="
				+ username + ", featureReviews=" + featureReviews + "]";
	}
}
Particle[] p = new Particle[250];
float spring = 0.0000001;
float xt = 0, yt = 1000;
float inc = 0.002;

void setup() {
	frameRate(30);

	size($(window).width(), $(window).height());

	for (int i = 0; i < p.length; i++) {
		p[i] = new Particle(random(-100, 2020), random(-100, 1180), 5);
		p[i].vx = random(-100, 2020);
		p[i].vy = random(-100, 1180);
		p[i].xt = random(1, 200);
		p[i].yt = random(1, 200);
	}
}

void draw() {
	background(255);

	for (int i = 0; i < p.length; i++) {
		p[i].x = p[i].vx + noise(p[i].xt) * 150;
		p[i].y = p[i].vy + noise(p[i].yt) * 150;

		p[i].xt += inc;
		p[i].yt += inc;

		for(int j = i + 1; j < p.length; j++) {
			springTo(p[i], p[j]);
		}
		p[i].display();
	}
}

void springTo(Particle p1, Particle p2) {
	float dx = p2.x - p1.x;
	float dy = p2.y - p1.y;
	float dist = sqrt(dx * dx + dy * dy);

	if (dist < 150) {
		float ax = dx * spring;
		float ay = dy * spring;

		stroke(240);
		line(p1.x, p1.y, p2.x, p2.y);
	}
}

class Particle {
	float x;
	float y;
	float vx;
	float vy;
	float r;
	color c = color(230);
	float xt, yt;
	Particle(float _x, float _y, float _r) {
	x = _x;
	y = _y;
	r = _r;
}

void display() {
	fill(c);
	noStroke();
	ellipse(x, y, r, r);
	}
}

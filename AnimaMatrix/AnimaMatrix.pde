/**
* Anima Matrix: A cillexia project by Christian Bietsch
* Website: www.cillexia.net
*/

// ========== RECORD SETTINGS ==========
static final int TOTAL_FRAMES = 1200;                   // Total frames to record
static boolean RECORD = true;                           // record
static final String NAME = "AnimaMatrixCYAN_1024x1024"; // name
static final String FORMAT = "png";                     // formate

int counter = 0;                                        // counts frames

// ========== INFO ==========
String INFO_WEBSITE = "cillexia.net";
String INFO_NAME = "Anima Matrix";
String INFO_AUTHOR = "Christian Bietsch";
int INFO_SIZE = 42;
color INFO_COLOR = color(160);
String LOGO = "cillexia_logo_backgroundTRANSPARENT_128x128.png";
PImage logo;

// ========== MATRIX ==========
float MATRIX_SIZE = 10.0*1024/400;       // Character size
color MATRIX_COLOR = color(0, 200, 200); // font color
color MATRIX_COLOR2 = color(200);        // color of a sequence's first char
boolean GLOW = true;                     // glow? (SLOWS DOWN dramatically when running real time)
// Column:
Column COLUMNS[] = { new Column("CILLEXIA ", 10, 0, 60, 2),
                    new Column("InaSilja", 20, 10, 40, 0),
                    new Column("Christian", 10, 0, 40, 0),
                    new Column("Ina", 10, 20, 40, 0),
                    new Column("Lelolina", 10, 10, 40, 0),
                    new Column("MATRIX", 40, 0, 60, 0),
                    new Column("cillexia", 160, 0, 42, 0),
                    new Column("Leonie", 10, 2, 40, 0),
                    new Column("Vixxi", 10, 10, 40, 0),
                    new Column("Lexxo", 10, 13, 40, 0),
                    new Column("Cillexia", 20, 0, 56, 0),
                    new Column("infinity  ", 20, 20, 40, 3),
                    new Column("matrix", 10, 9, 60, 0),
                    new Column("Emagone", 10, 90, 40, 0),
                    new Column("CILLEXIA", 80, 88, 48, 0),
                    new Column("Terra", 10, 70, 42, 0),
                    new Column("StringWave", 10, 20, 40, 0),
                    new Column("TerraNova", 20, 0, 42, 0),
                    new Column("Enceladus", 10, 13, 40, 0),
                    new Column("matrix", 80, 0, 40, 0),
                    new Column("zero4q", 10, 23, 44, 0),
                    new Column("10121996", 10, 84, 40, 0),
                    new Column("bunnycilla", 10, 20, 44, 0),
                    new Column("20021993", 10, 90, 40, 0),
                    new Column("ICU", 20, 80, 40, 0),
                    new Column("cillexia net   ", 20, 10, 60, 1),
                    new Column("Pixie", 10, 20, 46, 0),
                    new Column("Pixiedust", 10, 24, 40, 0),
                    new Column("I see You", 10, 16, 64, 0),
                    new Column("Zeitgeist", 20, 0, 50, 0),
                    new Column("consciousness", 10, 13, 42, 0),
                    new Column("Polarities", 10, 20, 40, 0),
                    new Column("Sonne", 10, 2, 47, 0),
                    new Column("Atlantis", 20, 13, 66, 0),
                    new Column("Mond", 10, 7, 45, 0),
                    new Column("chunk", 20, 4, 60, 0),
                    new Column("Qualia", 20, 24, 44, 0),
                    new Column("voxel", 10, 16, 64, 0),
                    new Column("Augen", 40, 30, 70, 0),
                    new Column("matrix", 160, 68, 80, 0),
                    new Column("Futura", 10, 20, 40, 0),
                    new Column("creative and innovative", 10, 96, 50, 0),
                    new Column("king of the dragons", 20, 87, 66, 0),
                    new Column("3,14159265359", 10, 2, 42, 0),
                    new Column("AI   ", 10, 0, 60, 3),
                    new Column("simulation", 10, 7, 40, 0),
                    new Column("network", 40, 12, 70, 0),
                    new Column("nanomix", 10, 70, 40, 0),
                    new Column("cube", 160, 80, 80, 0),
                    new Column("vita", 20, 0, 60, 0),
                    new Column("1,61803398875", 10, 20, 42, 0),
                    new Column("the magic in you", 10, 97, 40, 0),
                    new Column("where dreams become reality", 20, 70, 60, 0)  };

void setup() {
  size(1024, 1024);  // image size
  frameRate(60);
  
  // LOGO
  logo = loadImage(LOGO);
}

//** File name: folder/name.format */
final String fileName() { return NAME+"/"+NAME+nf(counter,4)+"."+FORMAT; }

void INFO() {
  /*
  // NAME
  fill(INFO_COLOR);
  textSize(INFO_SIZE);
  textAlign(CENTER, CENTER);
  text(INFO_NAME, 0, -height*0.47);
  
  // AUTHOR
  fill(INFO_COLOR);
  textSize(INFO_SIZE*0.7);
  textAlign(LEFT, CENTER);
  text("Animation by "+INFO_AUTHOR, -width*0.4625, height*0.47);
  
  // cillexia
  fill(INFO_COLOR);
  textSize(INFO_SIZE);
  textAlign(CENTER, CENTER);
  text(INFO_WEBSITE, 0, height*0.465);
  */
  // LOGO
  tint(INFO_COLOR);
  image(logo, width*0.5-logo.width, height*0.5-logo.height);
}

void draw() {
  final float progress = RECORD ? float(counter) / TOTAL_FRAMES : float(counter % TOTAL_FRAMES) / TOTAL_FRAMES;
  draw(progress);
  if (RECORD && counter == 0) { println("Start to record: "+ NAME); }
  if (RECORD) { saveFrame(fileName()); }
  counter++;
  if (RECORD) { println("Save: "+ counter +"/"+TOTAL_FRAMES); }
  if (RECORD && counter == TOTAL_FRAMES) { println("DONE"); exit(); }
}

/** Draws each anima frame with progress [0.0...1.0-frame] (Never reaches 1.0, since this is the beginning of the next cycle) */
void draw(float progress) {
  background(0);
  
  // MATRIX
  final float MATRIX_PROGRESS = progress;
  this.drawMATRIX(MATRIX_PROGRESS);
  
  
  if (GLOW) {
    blendMode(ADD);
    filter(BLUR, 4);
    this.drawMATRIX(MATRIX_PROGRESS);
  }
  
  // INFO
  translate(width*0.5, height*0.5);
  this.INFO();
}

void drawMATRIX(float progress) {
  for (int i = 0; i < COLUMNS.length; i++) {
    final Column COLUMN = COLUMNS[i];
    final float h = height, m = h*COLUMN.SPEED, x = 0, y = progress*m+(COLUMN.OFFSET+1.0)*h;
    for (int j = 0; j < COLUMN.DUPLICATE; j++) {
      for (int k = 0; k < COLUMN.STRING.length(); k++) {
        final color COLOR = (k == 0 ? MATRIX_COLOR2 : MATRIX_COLOR);
        final float alpha = min(max((1.25-(float(k)/COLUMN.STRING.length()))*255, 0), 255);
        final char c = COLUMN.STRING.charAt((k+int(progress*10*COLUMN.SWITCH_SPEED))%COLUMN.STRING.length());
        final float cx = x+i*MATRIX_SIZE*0.75;
        final float cy = (y-k*MATRIX_SIZE-j*MATRIX_SIZE*COLUMN.STRING.length())%h;
        // CHARS
        textSize(MATRIX_SIZE);
        textAlign(LEFT, CENTER);
        fill(COLOR, alpha);
        text(c, cx, cy);
        if (cy+MATRIX_SIZE > h) { text(c, cx, cy-h); }
      }
    }
  }
}

/** Column */
final class Column {
  // STRING: char sequence of one column
  final String STRING;
  // SPEED: column speed [1...100]
  final float SPEED;
  // OFFSET: column offset [1...100]
  final float OFFSET;
  // SWITCH_SPEED: how fast chars switch [1...100...]
  final float SWITCH_SPEED;
  // DUPLICATE: How often to repeat the sequence [0...]
  final int DUPLICATE;
  
  Column(String STRING, int SPEED, int OFFSET, int SWITCH_SPEED, int DUPLICATE) {
    this.STRING = STRING;
    this.SPEED = SPEED*0.1;
    this.OFFSET = OFFSET*0.01;
    this.SWITCH_SPEED = SWITCH_SPEED*0.25;
    this.DUPLICATE = DUPLICATE+1;
  }
}

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app_203753/models/models.dart';

class SectionsRepository {
  static final List<Section> allSections = [
    Section(
      id: 0,
      title: 'assets/png/us_foot.png',
      titleWidth: 178.r,
      titleHeight: 89.r,
      blocks: [
        [
          Question(
            question:
                "American football developed from rugby and soccer, with the first intercollegiate game played between Rutgers and Princeton in 1869, though it bore little resemblance to the modern game.",
            isTrue: true,
          ),
          Question(
            question:
                "In American football, each team has 11 players on the field at any given time.",
            isTrue: false,
          ),
          Question(
            question:
                "A standard American football field is 100 yards long, with two 10-yard end zones at each end, making the total length 120 yards.",
            isTrue: false,
          ),
          Question(
            question:
                " A touchdown is worth 6 points and is scored when a player carries the ball into the opponent's end zone or catches a pass while in the opponent's end zone.",
            isTrue: true,
          ),
          Question(
            question:
                "After a touchdown, a team can attempt to kick an extra point (worth 1 point) or run/pass for a two-point conversion (worth 2 points).",
            isTrue: true,
          ),
          Question(
            question:
                "The 2-minute warning is a mandatory timeout that occurs at the 2:00 mark of the second and fourth quarters in NFL games. It's an NFL-specific rule not found in college football.",
            isTrue: true,
          ),
          Question(
            question:
                """An "illegal motion" penalty (5-yard penalty) occurs when an offensive player is moving forward at the snap, or when more than one offensive player is in motion at the snap (other than the player receiving the snap).""",
            isTrue: false,
          ),
          Question(
            question:
                """The "roughing the passer" rule is a 15-yard penalty and an automatic first down, designed to protect quarterbacks from dangerous hits, especially after they've released the ball.""",
            isTrue: true,
          ),
          Question(
            question:
                """A "fair catch" allows the player receiving a punt or kickoff to signal for a catch where they cannot be tackled, but the ball cannot be advanced after the catch.""",
            isTrue: true,
          ),
          Question(
            question:
                "A chop block (15 yards) is when one offensive player blocks a defender high while another blocks them low at the same time, risking serious knee injury.",
            isTrue: false,
          ),
          Question(
            question:
                "A field goal is worth 3 points and is scored by kicking the ball through the opponent's uprights.",
            isTrue: true,
          ),
          Question(
            question:
                "A safety is worth 2 points and is scored when an offensive player with the ball is tackled in their own end zone.",
            isTrue: false,
          ),
          Question(
            question:
                """The "roughing the passer" rule is a 15-yard penalty and an automatic first down, designed to protect quarterbacks from dangerous hits, especially after they've released the ball.""",
            isTrue: true,
          ),
          Question(
            question:
                """ The offensive team has four "downs" (or attempts) to advance the ball at least 10 yards. If they succeed, they get a new set of four downs.""",
            isTrue: true,
          ),
          Question(
            question:
                "The quarterback is typically the leader of the offense, responsible for calling plays, throwing passes, and handing off the ball.",
            isTrue: false,
          ),
        ],
        [
          Question(
            question:
                "In the earliest days of American football, a touchdown did not automatically award points; it merely gave the team the right to try for a goal (kick) which was the primary scoring method.",
            isTrue: true,
          ),
          Question(
            question:
                "The forward pass was legalized in 1906, a major rule change designed to open up the game and reduce the brutal pile-ups that often resulted in serious injuries.",
            isTrue: false,
          ),
          Question(
            question:
                """The "Mel Blount Rule" (officially part of the illegal contact rule) was enacted in 1978, limiting how long defensive backs could contact receivers downfield, to encourage more passing offense.""",
            isTrue: false,
          ),
          Question(
            question:
                "The huddle was invented by Knute Rockne at Notre Dame in the 1920s to keep his revolutionary offensive schemes secret from opponents.",
            isTrue: true,
          ),
          Question(
            question:
                'The "Tuck Rule" (abolished in 2013) stated that if a quarterback began a forward passing motion and then brought the ball back to his body, and it was then fumbled, it was an incomplete pass, not a fumble.',
            isTrue: true,
          ),
          Question(
            question:
                "The winner of the coin toss can choose to receive the ball, kick the ball, or defer their choice to the second half. Most teams defer to gain the ball to start the third quarter.",
            isTrue: true,
          ),
          Question(
            question:
                "Illegal contact (5 yards) happens when a defender contacts a receiver over 5 yards from the line before the pass. Defensive holding (5 yards + first down) occurs anywhere if it restricts the receiver’s movement.",
            isTrue: false,
          ),
          Question(
            question:
                "In the earliest days of American football, a touchdown did not automatically award points; it merely gave the team the right to try for a goal (kick) which was the primary scoring method.",
            isTrue: true,
          ),
          Question(
            question:
                'The "West Coast Offense" (popularized by Bill Walsh) emphasizes short, high-percentage passes to control the ball, wear down the defense, and set up longer plays.',
            isTrue: true,
          ),
          Question(
            question:
                "Offside (5 yards) is when a defender crosses the line before the snap. Neutral zone infraction (also 5 yards) occurs if a defender enters the neutral zone and causes an offensive reaction, even if they retreat.",
            isTrue: false,
          ),
        ],
      ],
    ),
    Section(
      id: 1,
      title: 'assets/png/foot_text.png',
      titleWidth: 188.r,
      titleHeight: 61.r,
      blocks: [
        [
          Question(
            question:
                "A standard football match consists of two halves of 45 minutes each, with a break in between.",
            isTrue: true,
          ),
          Question(
            question:
                "FIFA recommends that football fields range from 100–110 meters in length and 64–75 meters in width.",
            isTrue: false,
          ),
          Question(
            question:
                "The FIFA World Cup is the most prestigious football tournament in the world and is held every four years.",
            isTrue: false,
          ),
          Question(
            question:
                "Modern football originated in England in the mid-19th century, though similar games existed long before.",
            isTrue: true,
          ),
          Question(
            question:
                "A standard football team fields 11 players on the pitch at the same time.",
            isTrue: true,
          ),
          Question(
            question:
                "In most official matches, teams are allowed to make three player substitutions.",
            isTrue: true,
          ),
          Question(
            question:
                "A yellow cards is issued for rule violations; two yellow cards in one match result in a red cards and ejection.",
            isTrue: false,
          ),
          Question(
            question:
                "The offside rule prevents attackers from gaining unfair advantage by being closer to the opponent’s goal than both the ball and the second-last defender at the moment of the pass.",
            isTrue: false,
          ),
          Question(
            question:
                "A penalty kick is awarded when a player commits a foul inside their own penalty area that would normally result in a free kick.",
            isTrue: true,
          ),
          Question(
            question:
                "The goalkeeper is the only player allowed to use their hands, but only within their own penalty area.",
            isTrue: true,
          ),
          Question(
            question:
                "The Cambridge Rules, developed in 1848, are considered a key step in standardizing early forms of",
            isTrue: true,
          ),
          Question(
            question:
                "Many early footballers and organizers in England were also active cricketers, and aspects of cricket's organization and spirit influenced the development of football.",
            isTrue: false,
          ),
          Question(
            question:
                "Goal-line technology is used in modern football to clearly determine whether the ball has fully crossed the goal line, helping to avoid controversial decisions.",
            isTrue: false,
          ),
          Question(
            question:
                "Changes to the Laws of the Game are approved by the International Football Association Board (IFAB), which includes representatives from FIFA and the four British football associations.",
            isTrue: true,
          ),
          Question(
            question:
                "The highest scoreline in international football was Australia’s 31–0 win over American Samoa during the 2002 World Cup qualifiers.",
            isTrue: true,
          ),
        ],
        [
          Question(
            question:
                '"Catenaccio" is a defensive tactical system that originated in Italy, focused on strong defense and counterattacks.',
            isTrue: true,
          ),
          Question(
            question:
                "The introduction of VAR (Video Assistant Referee) was gradual worldwide, and not all national leagues use it in full.",
            isTrue: false,
          ),
          Question(
            question:
                "UEFA’s Financial Fair Play rules aim to prevent clubs from spending more than they earn, promoting financial stability.",
            isTrue: true,
          ),
          Question(
            question:
                "Women’s football has a long history, but its development was hindered by bans and prejudice until the late 20th century.",
            isTrue: true,
          ),
          Question(
            question:
                "The modern football is made of 32 panels (20 hexagons and 12 pentagons), forming a truncated icosahedron for optimal aerodynamics.",
            isTrue: false,
          ),
          Question(
            question:
                "Brazil significantly influenced global football with its technical, individualistic, and attacking style of play.",
            isTrue: true,
          ),
          Question(
            question:
                "The Intercontinental Cup was a predecessor to the FIFA Club World Cup and featured the champions of Europe and South America.",
            isTrue: false,
          ),
          Question(
            question:
                "Yellow and red cards were first used at the 1970 World Cup, improving communication between referees, players, and fans.",
            isTrue: true,
          ),
          Question(
            question:
                "Home advantage is influenced by factors such as fan support, pitch familiarity, lack of travel fatigue, and psychological pressure on the visiting team",
            isTrue: true,
          ),
          Question(
            question:
                "The shift from amateur to professional football in England during the late 19th century was marked by intense debate but ultimately led to the dominance of professional clubs.",
            isTrue: false,
          ),
        ],
      ],
    ),
    Section(
      id: 2,
      title: 'assets/png/basketball_text.png',
      titleWidth: 188.r,
      titleHeight: 58.r,
      blocks: [
        [
          Question(
            question:
                "Basketball was invented by physical education instructor James Naismith in December 1891 in Springfield, Massachusetts.",
            isTrue: true,
          ),
          Question(
            question:
                "The original game used peach baskets without bottoms as hoops, and the ball had to be manually retrieved after each score.",
            isTrue: false,
          ),
          Question(
            question:
                "Basketball was invented in 1891 by James Naismith as an indoor sport to keep athletes active during winter. The first game was played with a soccer ball and two peach baskets as goals.",
            isTrue: true,
          ),
          Question(
            question:
                "Modern basketball teams have 5 players from each team on the court at the same time.",
            isTrue: true,
          ),
          Question(
            question: "NBA games consist of 4 quarters, each 12 minutes long.",
            isTrue: true,
          ),
          Question(
            question:
                "A standard NBA court measures 28.65 meters in length and 15.24 meters in width (94 by 50 feet).",
            isTrue: true,
          ),
          Question(
            question:
                "The offensive three-second rule prohibits a player from staying in the painted area (key) for more than 3 seconds while their team has possession.",
            isTrue: false,
          ),
          Question(question: "A free throw is worth 1 point.", isTrue: true),
          Question(
            question:
                "A team must attempt a shot within 24 seconds of gaining possession, or the ball goes to the opponent.",
            isTrue: true,
          ),
          Question(
            question:
                "Once a player stops dribbling, they may not start again unless they pass or shoot first.",
            isTrue: false,
          ),
          Question(
            question:
                "The Euro Step involves taking two steps in different directions after ending a dribble to avoid a defender.",
            isTrue: true,
          ),
          Question(
            question:
                "In the NBA, a player is disqualified after committing 6 personal fouls.",
            isTrue: false,
          ),
          Question(
            question:
                "Coaches can call timeouts to adjust strategy, rest players, or stop the opponent’s momentum.",
            isTrue: true,
          ),
          Question(
            question:
                "The original basketball games were played using soccer balls.",
            isTrue: true,
          ),
          Question(
            question:
                "A player who commits a foul may remain in the game unless they reach the foul limit.",
            isTrue: false,
          ),
        ],
        [
          Question(
            question:
                "In early basketball, dribbling was not allowed; players had to pass or shoot from where they caught the ball.",
            isTrue: true,
          ),
          Question(
            question:
                "Until the 2001–2002 season, the NBA had restrictions on zone defense to promote one-on-one play.",
            isTrue: false,
          ),
          Question(
            question:
                "If the ball touches the boundary line, it is considered out of bounds.",
            isTrue: false,
          ),
          Question(
            question:
                "Goaltending occurs when a player touches the ball on its downward path or after it hits the backboard above the rim.",
            isTrue: true,
          ),
          Question(
            question:
                "NBA coaches are allowed one challenge per game to dispute certain referee calls using video replay.",
            isTrue: true,
          ),
          Question(
            question:
                "Once a team advances the ball past midcourt, they cannot return it to the backcourt.",
            isTrue: true,
          ),
          Question(
            question:
                "Technical fouls are given for unsportsmanlike behavior, arguing with officials, delay of game, and non-contact violations.",
            isTrue: false,
          ),
          Question(
            question:
                "If a free throw fails to hit the rim or backboard, it's a violation and possession goes to the opponent.",
            isTrue: true,
          ),
          Question(
            question:
                "Once a team commits a set number of team fouls in a quarter, any further fouls (except offensive fouls) result in free throws.",
            isTrue: true,
          ),
          Question(
            question:
                "George Mikan, an early dominant center, influenced rule changes like widening the paint to reduce his advantage.",
            isTrue: false,
          ),
        ],
      ],
    ),
    Section(
      id: 3,
      title: 'assets/png/tennis_text.png',
      titleWidth: 178.r,
      titleHeight: 61.r,
      blocks: [
        [
          Question(
            question:
                'The word "tennis" is believed to come from the Old French word "tenez", meaning "hold" or "receive", which players would shout before serving.',
            isTrue: true,
          ),
          Question(
            question:
                "Tennis scoring (15, 30, 40, game) likely has historical roots linked to clock faces or betting traditions.",
            isTrue: false,
          ),
          Question(
            question:
                """The term "love" meaning zero likely comes from the French word "l'oeuf" (egg), referencing the shape of a zero.""",
            isTrue: false,
          ),
          Question(
            question:
                "A standard singles tennis court measures 23.77 meters (78 feet) long and 8.23 meters (27 feet) wide.",
            isTrue: true,
          ),
          Question(
            question:
                "The tennis net is 0.914 meters (3 feet) high at the center and 1.07 meters (3 feet 6 inches) at the posts.",
            isTrue: true,
          ),
          Question(
            question:
                "In Grand Slam tournaments, men play best-of-five sets (first to win 3).",
            isTrue: true,
          ),
          Question(
            question: "Women always play just one set in professional matches.",
            isTrue: false,
          ),
          Question(
            question:
                "A tiebreak is used in most sets that reach 6–6 to determine the winner of the set.",
            isTrue: true,
          ),
          Question(
            question:
                " Players switch sides after every odd-numbered game (1, 3, 5, etc.) and at the end of each set.",
            isTrue: true,
          ),
          Question(
            question:
                "Each Grand Slam is played on a different surface: Australian Open (hard), Roland Garros (clay), Wimbledon (grass), US Open (hard).",
            isTrue: false,
          ),
          Question(
            question:
                "Hawk-Eye and similar systems allow players to challenge close calls and see a replay of the bounce.",
            isTrue: true,
          ),
          Question(
            question:
                "The longest tennis match lasted over 11 hours at Wimbledon between John Isner and Nicolas Mahut in 2010.",
            isTrue: false,
          ),
          Question(
            question:
                "Underhand serves are legal in tennis, though rarely used at the professional level.",
            isTrue: true,
          ),
          Question(
            question:
                "The server must not touch or cross the baseline until the ball is struck.",
            isTrue: true,
          ),
          Question(
            question:
                "In doubles, the court includes the side alleys, making it wider than in singles.",
            isTrue: false,
          ),
        ],
        [
          Question(
            question:
                "Early tennis was mostly played on grass, laying the foundation for Wimbledon’s traditions.",
            isTrue: true,
          ),
          Question(
            question:
                'A "Golden Slam" is winning all four Grand Slam tournaments plus Olympic gold in the same calendar year.',
            isTrue: true,
          ),
          Question(
            question:
                'The word "deuce" comes from the French "à deux le jeu", meaning "the game is at two", requiring two consecutive points to win.',
            isTrue: false,
          ),
          Question(
            question:
                'A "bagel" refers to a 6–0 set; a "double bagel" is a 6–0, 6–0 win.',
            isTrue: false,
          ),
          Question(
            question:
                "The baseline defines where serves must be hit from and marks the back boundary of the court.",
            isTrue: false,
          ),
          Question(
            question:
                "Players can use towels during side changes and timeouts for hygiene and comfort.",
            isTrue: true,
          ),
          Question(
            question:
                'A "let" is called when the serve hits the net but lands correctly in the service box, and the serve is',
            isTrue: true,
          ),
          Question(
            question:
                "Players are expected to follow a code of conduct, showing respect to opponents, officials, and fans.",
            isTrue: true,
          ),
          Question(
            question:
                "Wimbledon enforces a strict all-white dress code, one of the oldest traditions in the tournament.",
            isTrue: true,
          ),
          Question(
            question:
                "The shift from wooden to metal and graphite rackets revolutionized tennis with faster, more powerful play.",
            isTrue: false,
          ),
        ],
      ],
    ),
  ];
}

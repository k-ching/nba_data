eststo clear

* This file replicates the results for Sloan Analytics Conference abstract submission *

* No Experience Needed? Talent Scouting and Managerial Performance in the NBA *

* Kenny Ching *

* 25th September 2022 *


* Table 1*

use mqp_nba_collapsed, clear

eststo: logit elite_player prior_player ln_exec_draft_exp, robust

use mqp_nba, clear

eststo: xtreg ln_per prior_player average_per ln_exec_draft_exp team_wins age i.pos1 i.team1 i.year  i.exec if elite_player, re robust


esttab 


Select Scores.Score, Rank
From 
(Select @rank:=0) as ss, 
Scores Right JOIN
(   Select Sb.Score as Score, @rank:=@rank+1 as Rank From (
    Select Distinct Score
    From Scores
    Order By Score Desc) as Sb
) Ranked On Scores.Score = Ranked.Score
Order By Rank Asc;

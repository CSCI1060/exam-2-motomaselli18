function avgScore = simpleBlackjack(limit, trials)
%
% This function simulates playing many hands of
% Simple Blackjack where the player continually
% hits up to a given limit. Final score for each
% hand is computed, and the average score over all
% hands is returned.
%
% INPUT limit – The player always hits if their
% hand value is less than limit
% INPUT trials – The number of hands to simulate
%
% OUTPUT avgScore – The average final score of
% all hands.



function avgScore = simpleBlackjack(limit, trials)
    finalScores = zeros(1, trials);
    cardValues = [2:10 10 10 10];
    
    for trial = 1:trials
        handTotal = 0;
        while handTotal < limit
            card = cardValues(randi(length(cardValues)));
            handTotal = handTotal + card;
        end
        finalScores(trial) = handTotal;
    end
    
    avgScore = mean(finalScores);
end

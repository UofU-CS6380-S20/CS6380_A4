function textwaitbar(i, n, msg)
% A command line version of waitbar.
% Usage:
%   textwaitbar(i, n, msg)
% Input:
%   i   :   i-th iteration.
%   n   :   total iterations.
%   msg :   text message to print.
%
% Date      : 05/23/2019
% Original Author    : Xiaoxuan He   <hexxx937@umn.edu>
% Institute : University of Minnesota
%
%
% MODIFIED: 03/31/2020
% Authot:
%   Michael Cline
%   School of Computing    
%   University of Utah
%

% Previous percentage number.
persistent i_prev_prct;

% Current percentage number.
i_prct = floor((i ./ n) * 100);

% Print message when counting starts.
if isempty(i_prev_prct) || i_prct < i_prev_prct
    i_prev_prct = 0;
    S_prev = getPrctStr(i_prev_prct);
    
    fprintf('%s | %s',msg, S_prev);
end

% Print updated percentage.
if i_prct ~= i_prev_prct
    S_prev = getPrctStr(i_prev_prct);
    fprintf(getBackspaceStr(numel([msg, ' | ', S_prev])));
    
    S = getPrctStr(i_prct);
    fprintf('%s | %s',msg, S);
    
    i_prev_prct = i_prct;
end

% Clear percentage variable.
if i_prct == 100
    fprintf(' Done.\n');
    clear i_prev_prct;
end

end

function S = getPrctStr(prct)
S = sprintf('%d%%  %s',prct,getDotStr(prct));

if prct < 10
    S = ['  ',S];
elseif prct < 100
    S = [' ',S];
end
end

function S = getDotStr(prct)
S = repmat(' ',1,10);
S(1:floor(prct/10)) = '.';
S = ['[',S,']'];
end

function S = getBackspaceStr(N)
S = repmat('\b',1,N);
end
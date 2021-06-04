function [btc] = edge_to_center(bt)


btmf  = edge_to_face(bt);
btc   = face_to_center(btmf);

end


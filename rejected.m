function [] = rejected()
h = waitbar(0,'REJECT');
    steps = 1000;
    parfor step = 1:steps
        waitbar(step / steps)
    end
    close(h)
  end
  
 

function [] = rejects()
h = waitbar(0,'REJECT: This is not a cavendish');
    steps = 4000;
    parfor step = 1:steps
        waitbar(step / steps)
    end
    close(h)
  end

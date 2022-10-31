function [] = bounding_colory()
global statsy
    for object=1:length(statsy)
         bb=statsy(object).BoundingBox;
         bc=statsy(object).Centroid;
         rectangle('Position',bb,'EdgeColor','G','LineWidth',2);
         plot(bc(1),bc(2),'-m+');
         a=text(bc(1)+15,bc(2), strcat('X:', num2str(round(bc(1))), 'Y:', num2str(round(bc(2)))));
         set(a, 'FontName', 'Arial', 'FontWeight', 'bold', 'FontSize', 12, 'Color', 'green');
     end
end


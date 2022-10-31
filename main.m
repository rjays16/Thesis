function varargout = main(varargin)
tic;

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_OpeningFcn, ...
                   'gui_OutputFcn',  @main_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
                             
if nargin && ischar(varargin{1})
  
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end

function main_OpeningFcn(hObject, eventdata, handles, varargin)

tic;
set(gcf, 'units','normalized','outerposition',[0 0 1 1]);
ah = axes('unit', 'normalized', 'position', [0 0 1 1]);
bg = imread('background.png'); imagesc(bg);

set(ah,'handlevisibility','off','visible','off')

uistack(ah, 'bottom');

handles.output = hObject;

guidata(hObject, handles);

toc;
function varargout = main_OutputFcn(hObject, eventdata, handles)

varargout{1} = handles.output;

function pushbutton1_Callback(hObject, eventdata, handles)
tic;

global picture;

x = 0;
count_a = 0;
count_b = 0;
count_ov = 0;
toc;

tic;
wb = waitbar(x,'Start Opening Camera');
waitbar(x + 0.2, wb, 'Start Opening Camera...'); 
toc;


tic;
waitbar(x + 0.4, wb, 'Enable Classify Images');
set(handles.pushbutton1,'Visible','off');
toc;

tic;
waitbar(x + 0.6, wb, 'Enabled Close button...');
set(handles.pushbutton4,'Visible','on');
toc;

tic;
waitbar(x + 0.8, wb, 'Wait until camera is open...');

res_train_classes();
neural_net();

toc;

tic;
camera = webcam();
nnet = alexnet;
waitbar(x + 1, wb, 'Done');
delete(wb);
toc;

tic;
while true
    picture = camera.snapshot;
    picture = imresize(picture,[227,227]);
    label = classify(nnet, picture);
    toc;
    
        
    image(picture);
    tic;
 
      
     tic;
    bel = classify_model(picture);    
        toc;
            
        tic;
        set(handles.txtcountMetal, 'string', '0');
        set(handles.txtcountMetalBend, 'string', '0');
            if bel ~= 'Metal_Bend' && bel ~= 'Metal_Not_Bend' 
                set(handles.edit1, 'ForegroundColor', 'red', 'string', 'X');
                set(handles.edit2, 'ForegroundColor', 'red', 'string', 'X');
                toc;
            else
                
                tic;
            if bel == 'Metal_NOT_Bend'
                count_b = 0;
                set(handles.edit1, 'ForegroundColor', 'green', 'string', 'YES');
                set(handles.edit2, 'ForegroundColor', 'red', 'string', 'X');
                count_b = count_b + 1;
                set(handles.txtcountMetal, 'string', count_b);
            end
            toc;
            
            tic;
            if bel == 'Metal_Bend'
                count_a = 0;
                f = warndlg('Detects Image Bend Metal','Warning');
                set(handles.edit1, 'ForegroundColor', 'green', 'string', 'YES');
                set(handles.edit2, 'ForegroundColor', 'green', 'string', 'YES');
                count_a = count_a + 1;
                set(handles.txtcountMetalBend, 'string', count_a);
            end
            end
end
            toc;


function pushbutton4_Callback(hObject, eventdata, handles)

close all; clear all; clc; delete(gcp('nocreate'));


function edit1_Callback(hObject, eventdata, handles)


function edit1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
    
end

function edit2_Callback(hObject, eventdata, handles)

function edit2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)



function edit3_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)

function edit4_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)

function edit5_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
toc;
end

function uipanel2_CreateFcn(hObject, eventdata, handles)


function figure1_SizeChangedFcn(hObject, eventdata, handles)

function pushbutton5_Callback(hObject, eventdata, handles)

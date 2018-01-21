function varargout = senoGrafica(varargin)
% SENOGRAFICA MATLAB code for senoGrafica.fig
%      SENOGRAFICA, by itself, creates a new SENOGRAFICA or raises the existing
%      singleton*.
%
%      H = SENOGRAFICA returns the handle to a new SENOGRAFICA or the handle to
%      the existing singleton*.
%
%      SENOGRAFICA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SENOGRAFICA.M with the given input arguments.
%
%      SENOGRAFICA('Property','Value',...) creates a new SENOGRAFICA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before senoGrafica_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to senoGrafica_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help senoGrafica

% Last Modified by GUIDE v2.5 24-Nov-2017 10:46:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @senoGrafica_OpeningFcn, ...
                   'gui_OutputFcn',  @senoGrafica_OutputFcn, ...
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
% End initialization code - DO NOT EDIT


% --- Executes just before senoGrafica is made visible.
function senoGrafica_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to senoGrafica (see VARARGIN)

% Choose default command line output for senoGrafica
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes senoGrafica wait for user response (see UIRESUME)
% uiwait(handles.figure1);
Graficar(handles,1);
Graficar(handles,2);

% --- Outputs from this function are returned to the command line.
function varargout = senoGrafica_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1G1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1G1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

Graficar(handles,1);
% --- Executes during object creation, after setting all properties.
function slider1G1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1G1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in grilla1.
function grilla1_Callback(hObject, eventdata, handles)
% hObject    handle to grilla1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of grilla1
Graficar(handles,1);

% --- Executes on slider movement.
function slider2G1_Callback(hObject, eventdata, handles)
% hObject    handle to slider2G1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

Graficar(handles,1);
% --- Executes during object creation, after setting all properties.
function slider2G1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2G1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3G1_Callback(hObject, eventdata, handles)
% hObject    handle to slider3G1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

Graficar(handles,1);
% --- Executes during object creation, after setting all properties.
function slider3G1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3G1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4G1_Callback(hObject, eventdata, handles)
% hObject    handle to slider4G1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

Graficar(handles,1);
% --- Executes during object creation, after setting all properties.
function slider4G1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4G1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in der1.
function der1_Callback(hObject, eventdata, handles)
% hObject    handle to der1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of der1
Graficar(handles,1);

% --- Executes on button press in int1.
function int1_Callback(hObject, eventdata, handles)
% hObject    handle to int1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of int1
Graficar(handles,1);

% --- Executes on button press in sin1.
function sin1_Callback(hObject, eventdata, handles)
% hObject    handle to sin1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sin1

Graficar(handles,1);

function f1_Callback(hObject, eventdata, handles)
% hObject    handle to f1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f1 as text
%        str2double(get(hObject,'String')) returns contents of f1 as a double

Graficar(handles,1);
% --- Executes during object creation, after setting all properties.
function f1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider1G2_Callback(hObject, eventdata, handles)
% hObject    handle to slider1G2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Graficar(handles,2);

% --- Executes during object creation, after setting all properties.
function slider1G2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1G2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in grilla2.
function grilla2_Callback(hObject, eventdata, handles)
% hObject    handle to grilla2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of grilla2
Graficar(handles,2);

% --- Executes on slider movement.
function slider2G2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2G2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Graficar(handles,2);

% --- Executes during object creation, after setting all properties.
function slider2G2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2G2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3G2_Callback(hObject, eventdata, handles)
% hObject    handle to slider3G2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Graficar(handles,2);

% --- Executes during object creation, after setting all properties.
function slider3G2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3G2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes on slider movement.
function slider4G2_Callback(hObject, eventdata, handles)
% hObject    handle to slider4G2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

Graficar(handles,2);
% --- Executes during object creation, after setting all properties.
function slider4G2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4G2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in der2.
function der2_Callback(hObject, eventdata, handles)
% hObject    handle to der2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of der2
Graficar(handles,2);

% --- Executes on button press in int2.
function int2_Callback(hObject, eventdata, handles)
% hObject    handle to int2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of int2
Graficar(handles,2);


function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double
% --- Executes during object creation, after setting all properties.

Graficar(handles,2);




function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function Graficar(handles,tipo)

conteo=0;
conteoG1=0;

if tipo==1
   axes(handles.axes1);
sliderxmin1=get(handles.slider1G1,'value');
sliderxmax1=get(handles.slider2G1,'value');
sliderymin1=get(handles.slider3G1,'value');
sliderymax1=get(handles.slider4G1,'value');

if get(handles.sin1,'value')==1
    conteoG1=conteoG1+1;
    x=linspace(sliderxmin1,sliderxmax1,100);
    
    y=sin(x);
    plot(x,y,'r--');
    
end
if get(handles.cos1,'value')==1
    conteoG1=conteoG1+2;
     x=linspace(sliderxmin1,sliderxmax1,100);
    y=cos(x);
    plot(x,y,'r--');
end 

if get(handles.cf1,'value')==1
    conteoG1=conteoG1+4;
 syms x
funcion=eval(get(handles.f1,'String'));
x=linspace(sliderxmin1,sliderxmax1,100);
funcion=eval(funcion);

plot(x,funcion,'r--');
end

if get(handles.der1,'value')==1 
    conteo=conteo+2;
    syms x
    ysD=get(handles.sin1,'String');
    ysD=diff(eval(ysD));
    x=linspace(sliderxmin1,sliderxmax1,1000);
    ysD=eval(ysD);
    plot(x,ysD,'r--');
end
if get(handles.int1,'value')==1 
    conteo=conteo+4;
    syms x
    ysD=get(handles.sin1,'String');
    ysD=int(eval(ysD));
    x=linspace(sliderxmin1,sliderxmax1,1000);
    ysD=eval(ysD);
    plot(x,ysD,'r--');
end

if get(handles.grilla1,'value')==1
    conteo=conteo+1;
    grid on;
else
    grid off;
end


switch conteo
    case 3
    syms x
    if conteoG1==1
    ysD=get(handles.sin1,'String');
    elseif conteoG1==2
    ysD=get(handles.cos1,'String');
    elseif conteoG1==4
    ysD=get(handles.cf1,'String');
    end
   
    ysD=diff(eval(ysD));
    x=linspace(sliderxmin1,sliderxmax1,1000);
    ysD=eval(ysD);
    plot(x,ysD,'r--');
    grid on
    case 5
     syms x
    if conteoG1==1
    ysI=get(handles.sin1,'String');
    elseif conteoG1==2
    ysI=get(handles.cos1,'String');
    elseif conteoG1==4
    ysI=get(handles.cf1,'String');
    end
   
    ysI=int(eval(ysI));
    x=linspace(sliderxmin1,sliderxmax1,1000);
    ysI=eval(ysI);
    plot(x,ysI,'g-');
    grid on
    case 6
        
  syms x
    if conteoG1==1
    ysD=get(handles.sin1,'String');
    elseif conteoG1==2
    ysD=get(handles.cos1,'String');
    elseif conteoG1==4
    ysD=get(handles.cf1,'String');
    end
    ysD=diff(eval(ysD));
    x=linspace(sliderxmin1,sliderxmax1,1000);
    ysD=eval(ysD);
    
  syms x
    if conteoG1==1
    ysI=get(handles.sin1,'String');
    elseif conteoG1==2
    ysI=get(handles.cos1,'String');
    elseif conteoG1==4
    ysI=get(handles.cf1,'String');
    end
    ysI=int(eval(ysI));
    x=linspace(sliderxmin1,sliderxmax1,1000);
    ysI=eval(ysI);
    plot(x,ysD,'r--',x,ysI,'g-');
    case 7
         syms x
    ysD=get(handles.sin1,'String');
    ysD=diff(eval(ysD));
    x=linspace(sliderxmin1,sliderxmax1,1000);
    ysD=eval(ysD);
    
    syms x
    ysI=get(handles.sin1,'String');
    ysI=int(eval(ysI));
    x=linspace(sliderxmin1,sliderxmax1,1000);
    ysI=eval(ysI);
    plot(x,ysD,'r--',x,ysI,'g-');
    grid on
        
end
axis([ sliderxmin1 sliderxmax1 sliderymin1 sliderymax1]); 
    
    

%------- Segunda grafica------
else
    
    axes(handles.axes3);
sliderxmin2=get(handles.slider1G2,'value');
sliderxmax2=get(handles.slider2G2,'value');
sliderymin2=get(handles.slider3G2,'value');
sliderymax2=get(handles.slider4G2,'value');

if get(handles.sin2,'value')==1
    conteoG1=conteoG1+1;
    x=linspace(sliderxmin2,sliderxmax2,100);
    
    y=sin(x);
    plot(x,y,'r--');
    
end
if get(handles.cos2,'value')==1
    conteoG1=conteoG1+2;
     x=linspace(sliderxmin2,sliderxmax2,100);
    y=cos(x);
    plot(x,y,'r--');
end 

if get(handles.cf2,'value')==1
    conteoG1=conteoG1+4;
 syms x
funcion=eval(get(handles.f2,'String'));
x=linspace(sliderxmin2,sliderxmax2,100);
funcion=eval(funcion);

plot(x,funcion,'r--');
end

if get(handles.der2,'value')==1 
    conteo=conteo+2;
    syms x
    ysD=get(handles.sin2,'String');
    ysD=diff(eval(ysD));
    x=linspace(sliderxmin2,sliderxmax2,1000);
    ysD=eval(ysD);
    plot(x,ysD,'r--');
end
if get(handles.int2,'value')==1 
    conteo=conteo+4;
    syms x
    ysD=get(handles.sin2,'String');
    ysD=int(eval(ysD));
    x=linspace(sliderxmin2,sliderxmax2,1000);
    ysD=eval(ysD);
    plot(x,ysD,'r--');
end

if get(handles.grilla2,'value')==1
    conteo=conteo+1;
    grid on;
else
    grid off;
end


switch conteo
    case 3
    syms x
    if conteoG1==1
    ysD=get(handles.sin2,'String');
    elseif conteoG1==2
    ysD=get(handles.cos2,'String');
    elseif conteoG1==4
    ysD=get(handles.cf2,'String');
    end
   
    ysD=diff(eval(ysD));
    x=linspace(sliderxmin2,sliderxmax2,1000);
    ysD=eval(ysD);
    plot(x,ysD,'r--');
    grid on
    case 5
     syms x
    if conteoG1==1
    ysI=get(handles.sin2,'String');
    elseif conteoG1==2
    ysI=get(handles.cos2,'String');
    elseif conteoG1==4
    ysI=get(handles.cf2,'String');
    end
   
    ysI=int(eval(ysI));
    x=linspace(sliderxmin2,sliderxmax2,1000);
    ysI=eval(ysI);
    plot(x,ysI,'g-');
    grid on
    case 6
        
  syms x
    if conteoG1==1
    ysD=get(handles.sin2,'String');
    elseif conteoG1==2
    ysD=get(handles.cos2,'String');
    elseif conteoG1==4
    ysD=get(handles.cf2,'String');
    end
    ysD=diff(eval(ysD));
    x=linspace(sliderxmin2,sliderxmax2,1000);
    ysD=eval(ysD);
    
  syms x
    if conteoG1==1
    ysI=get(handles.sin2,'String');
    elseif conteoG1==2
    ysI=get(handles.cos2,'String');
    elseif conteoG1==4
    ysI=get(handles.cf2,'String');
    end
    ysI=int(eval(ysI));
    x=linspace(sliderxmin2,sliderxmax2,1000);
    ysI=eval(ysI);
    plot(x,ysD,'r--',x,ysI,'g-');
    case 7
         syms x
    ysD=get(handles.sin1,'String');
    ysD=diff(eval(ysD));
    x=linspace(sliderxmin2,sliderxmax2,1000);
    ysD=eval(ysD);
    
    syms x
    ysI=get(handles.sin1,'String');
    ysI=int(eval(ysI));
    x=linspace(sliderxmin2,sliderxmax2,1000);
    ysI=eval(ysI);
    plot(x,ysD,'r--',x,ysI,'g-');
    grid on
        
end
axis([ sliderxmin2 sliderxmax2 sliderymin2 sliderymax2]); 
    
    
    
end

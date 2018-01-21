function varargout = GraficarFuncion(varargin)
% GRAFICARFUNCION MATLAB code for GraficarFuncion.fig
%      GRAFICARFUNCION, by itself, creates a new GRAFICARFUNCION or raises the existing
%      singleton*.
%
%      H = GRAFICARFUNCION returns the handle to a new GRAFICARFUNCION or the handle to
%      the existing singleton*.
%
%      GRAFICARFUNCION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAFICARFUNCION.M with the given input arguments.
%
%      GRAFICARFUNCION('Property','Value',...) creates a new GRAFICARFUNCION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GraficarFuncion_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GraficarFuncion_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GraficarFuncion

% Last Modified by GUIDE v2.5 23-Nov-2017 20:57:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GraficarFuncion_OpeningFcn, ...
                   'gui_OutputFcn',  @GraficarFuncion_OutputFcn, ...
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


% --- Executes just before GraficarFuncion is made visible.
function GraficarFuncion_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GraficarFuncion (see VARARGIN)

% Choose default command line output for GraficarFuncion
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GraficarFuncion wait for user response (see UIRESUME)
% uiwait(handles.figure1);
Graficar(handles);

% --- Outputs from this function are returned to the command line.
function varargout = GraficarFuncion_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function xmin_Callback(hObject, eventdata, handles)
% hObject    handle to xmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xmin as text
%        str2double(get(hObject,'String')) returns contents of xmin as a double
Graficar(handles);

% --- Executes during object creation, after setting all properties.
function xmin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in grilla.
function grilla_Callback(hObject, eventdata, handles)
% hObject    handle to grilla (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of grilla
Graficar(handles);


function xmax_Callback(hObject, eventdata, handles)
% hObject    handle to xmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xmax as text
%        str2double(get(hObject,'String')) returns contents of xmax as a double
Graficar(handles);

% --- Executes during object creation, after setting all properties.
function xmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ymin_Callback(hObject, eventdata, handles)
% hObject    handle to ymin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ymin as text
%        str2double(get(hObject,'String')) returns contents of ymin as a double
Graficar(handles);

% --- Executes during object creation, after setting all properties.
function ymin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ymin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ymax_Callback(hObject, eventdata, handles)
% hObject    handle to ymax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ymax as text
%        str2double(get(hObject,'String')) returns contents of ymax as a double
Graficar(handles);

% --- Executes during object creation, after setting all properties.
function ymax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ymax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function funcion_Callback(hObject, eventdata, handles)
% hObject    handle to funcion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of funcion as text
%        str2double(get(hObject,'String')) returns contents of funcion as a double
Graficar(handles);

% --- Executes during object creation, after setting all properties.
function funcion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to funcion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function puntos_Callback(hObject, eventdata, handles)
% hObject    handle to puntos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of puntos as text
%        str2double(get(hObject,'String')) returns contents of puntos as a double
Graficar(handles);

% --- Executes during object creation, after setting all properties.
function puntos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to puntos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Graficar(handles)
xmin=str2double(get(handles.xmin,'string'));
xmax=str2double(get(handles.xmax,'string'));
ymin=str2double(get(handles.ymin,'string'));
ymax=str2double(get(handles.ymax,'string'));

Xrt = get(handles.sldXrt,'value');
puntos=str2double(get(handles.puntos,'string'));


syms x
funcion=eval(get(handles.funcion,'string'));
x=linspace(xmin,xmax,puntos);
y=eval(funcion);

plot(x,y,'r--');


if get(handles.grilla,'value')==1
    
    grid on;
else
    grid off;
end
axis([ xmin xmax ymin ymax]);


if get(handles.cbRT, 'Value') == 1
    
    syms x;
    df = diff(funcion);
    x = Xrt;
    m = eval(df);
    y0 = eval(funcion);
    x0 = x;
    x = linspace(xmin,xmax,puntos);
    y = m*(x-x0)+y0;
    hold on;
    plot(x,y);
    hold off;
end

if get(handles.rectaP, 'Value') == 1

    syms x;
    df = diff(funcion);
    x = Xrt;
    m = eval(df);
    m2=(-1/m);
    y0 = eval(funcion);
    x0 = x;
    x = linspace(xmin,xmax,puntos);
    y = m2*(x-x0)+y0;
    hold on;
    plot(x,y);
    hold off;
    
end

% --- Executes on slider movement.
function sldXrt_Callback(hObject, eventdata, handles)
% hObject    handle to sldXrt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Graficar(handles);

% --- Executes during object creation, after setting all properties.
function sldXrt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sldXrt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in cbRT.
function cbRT_Callback(hObject, eventdata, handles)
% hObject    handle to cbRT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cbRT
Graficar(handles);


% --- Executes on button press in rectaP.
function rectaP_Callback(hObject, eventdata, handles)
% hObject    handle to rectaP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rectaP
Graficar(handles);

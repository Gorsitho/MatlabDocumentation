function varargout = ejercicio1_graficaDinamica(varargin)
% EJERCICIO1_GRAFICADINAMICA MATLAB code for ejercicio1_graficaDinamica.fig
%      EJERCICIO1_GRAFICADINAMICA, by itself, creates a new EJERCICIO1_GRAFICADINAMICA or raises the existing
%      singleton*.
%
%      H = EJERCICIO1_GRAFICADINAMICA returns the handle to a new EJERCICIO1_GRAFICADINAMICA or the handle to
%      the existing singleton*.
%
%      EJERCICIO1_GRAFICADINAMICA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EJERCICIO1_GRAFICADINAMICA.M with the given input arguments.
%
%      EJERCICIO1_GRAFICADINAMICA('Property','Value',...) creates a new EJERCICIO1_GRAFICADINAMICA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ejercicio1_graficaDinamica_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ejercicio1_graficaDinamica_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ejercicio1_graficaDinamica

% Last Modified by GUIDE v2.5 27-Oct-2017 06:27:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ejercicio1_graficaDinamica_OpeningFcn, ...
                   'gui_OutputFcn',  @ejercicio1_graficaDinamica_OutputFcn, ...
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


% --- Executes just before ejercicio1_graficaDinamica is made visible.
function ejercicio1_graficaDinamica_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ejercicio1_graficaDinamica (see VARARGIN)

% Choose default command line output for ejercicio1_graficaDinamica
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
Graficar(handles,1);
% UIWAIT makes ejercicio1_graficaDinamica wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ejercicio1_graficaDinamica_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit_xmin_Callback(hObject, eventdata, handles)
% hObject    handle to edit_xmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_xmin as text
%        str2double(get(hObject,'String')) returns contents of edit_xmin as a double

Graficar(handles,0);
% --- Executes during object creation, after setting all properties.
function edit_xmin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_xmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider_xmin_Callback(hObject, eventdata, handles)
% hObject    handle to slider_xmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Graficar(handles,1);

% --- Executes during object creation, after setting all properties.
function slider_xmin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_xmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_xmax_Callback(hObject, eventdata, handles)
% hObject    handle to slider_xmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Graficar(handles,1);

% --- Executes during object creation, after setting all properties.
function slider_xmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_xmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit_xmax_Callback(hObject, eventdata, handles)
% hObject    handle to edit_xmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_xmax as text
%        str2double(get(hObject,'String')) returns contents of edit_xmax as a double

Graficar(handles,0);
% --- Executes during object creation, after setting all properties.
function edit_xmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_xmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Graficar(handles,tipo)


if tipo==0
        
   xmin2=str2double(get(handles.edit_xmin,'String'));
xmax2=str2double(get(handles.edit_xmax,'String'));
 if (xmin2<0||xmin2>pi) || (xmax2<pi || xmax2>2*pi)
     
     xmin2=0;
     xmax2=3;
 end 
set(handles.slider_xmin,'value',xmin2);
set(handles.slider_xmax,'value',xmax2); 
x=linspace(xmin2,xmax2,1000);
 
else
    
xmin=get(handles.slider_xmin,'value');
xmax=get(handles.slider_xmax,'value');
set(handles.edit_xmin,'String',xmin);
set(handles.edit_xmax,'String',xmax);
x=linspace(xmin,xmax,1000);
end    


y=sin(x);
plot(x,y);
grid on;

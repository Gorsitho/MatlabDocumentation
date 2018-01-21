function varargout = ej_guide02(varargin)
% EJ_GUIDE02 MATLAB code for ej_guide02.fig
%      EJ_GUIDE02, by itself, creates a new EJ_GUIDE02 or raises the existing
%      singleton*.
%
%      H = EJ_GUIDE02 returns the handle to a new EJ_GUIDE02 or the handle to
%      the existing singleton*.
%
%      EJ_GUIDE02('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EJ_GUIDE02.M with the given input arguments.
%
%      EJ_GUIDE02('Property','Value',...) creates a new EJ_GUIDE02 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ej_guide02_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ej_guide02_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ej_guide02

% Last Modified by GUIDE v2.5 21-Nov-2017 11:44:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ej_guide02_OpeningFcn, ...
                   'gui_OutputFcn',  @ej_guide02_OutputFcn, ...
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


% --- Executes just before ej_guide02 is made visible.
function ej_guide02_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ej_guide02 (see VARARGIN)

% Choose default command line output for ej_guide02
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ej_guide02 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
Graficar(handles);

% --- Outputs from this function are returned to the command line.
function varargout = ej_guide02_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edXmin_Callback(hObject, eventdata, handles)
% hObject    handle to edXmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edXmin as text
%        str2double(get(hObject,'String')) returns contents of edXmin as a double
Graficar(handles);

% --- Executes during object creation, after setting all properties.
function edXmin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edXmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edXmax_Callback(hObject, eventdata, handles)
% hObject    handle to edXmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edXmax as text
%        str2double(get(hObject,'String')) returns contents of edXmax as a double
Graficar(handles);

% --- Executes during object creation, after setting all properties.
function edXmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edXmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edYmin_Callback(hObject, eventdata, handles)
% hObject    handle to edYmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edYmin as text
%        str2double(get(hObject,'String')) returns contents of edYmin as a double
Graficar(handles);

% --- Executes during object creation, after setting all properties.
function edYmin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edYmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edYmax_Callback(hObject, eventdata, handles)
% hObject    handle to edYmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edYmax as text
%        str2double(get(hObject,'String')) returns contents of edYmax as a double
Graficar(handles);

% --- Executes during object creation, after setting all properties.
function edYmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edYmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% hObject    handle to edFuncion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edFuncion as text
%        str2double(get(hObject,'String')) returns contents of edFuncion as a double


% --- Executes during object creation, after setting all properties.
function edFuncion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edFuncion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in cbGrilla.
function cbGrilla_Callback(hObject, eventdata, handles)
% hObject    handle to cbGrilla (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cbGrilla
Graficar(handles);


function edPuntos_Callback(hObject, eventdata, handles)
% hObject    handle to edPuntos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edPuntos as text
%        str2double(get(hObject,'String')) returns contents of edPuntos as a double
Graficar(handles);

% --- Executes during object creation, after setting all properties.
function edPuntos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edPuntos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function Graficar(handles)

xmin = str2double(get(handles.edXmin, 'String'));
xmax = str2double(get(handles.edXmax, 'String'));
ymin = str2double(get(handles.edYmin, 'String'));
ymax = str2double(get(handles.edYmax, 'String'));
puntos = str2double(get(handles.edPuntos, 'String'));

set(handles.sldXrt, 'min', xmin);
set(handles.sldXrt, 'max', xmax);

Xrt = get(handles.sldXrt, 'Value');

syms x;
f = eval(get(handles.edF, 'String'));

x = linspace(xmin,xmax,puntos);
y = eval(f);
grilla = get(handles.cbGrilla, 'Value');

plot(x,y);
axis([xmin xmax ymin ymax]);
if grilla == 1
    grid on;
else
    grid off;
end

if get(handles.cbRT, 'Value') == 1
    syms x;
    df = diff(f);
    x = Xrt;
    m = eval(df);
    y0 = eval(f);
    x0 = x;
    x = linspace(xmin,xmax,puntos);
    y = m*(x-x0)+y0;
    hold on;
    plot(x,y);
    hold off;
end


function edF_Callback(hObject, eventdata, handles)
% hObject    handle to edF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edF as text
%        str2double(get(hObject,'String')) returns contents of edF as a double
Graficar(handles);

% --- Executes during object creation, after setting all properties.
function edF_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
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
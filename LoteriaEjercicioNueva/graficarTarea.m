function varargout = graficarTarea(varargin)
% GRAFICARTAREA MATLAB code for graficarTarea.fig
%      GRAFICARTAREA, by itself, creates a new GRAFICARTAREA or raises the existing
%      singleton*.
%
%      H = GRAFICARTAREA returns the handle to a new GRAFICARTAREA or the handle to
%      the existing singleton*.
%
%      GRAFICARTAREA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAFICARTAREA.M with the given input arguments.
%
%      GRAFICARTAREA('Property','Value',...) creates a new GRAFICARTAREA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before graficarTarea_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to graficarTarea_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help graficarTarea

% Last Modified by GUIDE v2.5 09-Oct-2017 21:33:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @graficarTarea_OpeningFcn, ...
                   'gui_OutputFcn',  @graficarTarea_OutputFcn, ...
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


% --- Executes just before graficarTarea is made visible.
function graficarTarea_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to graficarTarea (see VARARGIN)

% Choose default command line output for graficarTarea
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes graficarTarea wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = graficarTarea_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function editxmin_Callback(hObject, eventdata, handles)
% hObject    handle to editxmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editxmin as text
%        str2double(get(hObject,'String')) returns contents of editxmin as a double


% --- Executes during object creation, after setting all properties.
function editxmin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editxmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editxmax_Callback(hObject, eventdata, handles)
% hObject    handle to editxmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editxmax as text
%        str2double(get(hObject,'String')) returns contents of editxmax as a double


% --- Executes during object creation, after setting all properties.
function editxmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editxmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editymin_Callback(hObject, eventdata, handles)
% hObject    handle to editymin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editymin as text
%        str2double(get(hObject,'String')) returns contents of editymin as a double


% --- Executes during object creation, after setting all properties.
function editymin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editymin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editymax_Callback(hObject, eventdata, handles)
% hObject    handle to editymax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editymax as text
%        str2double(get(hObject,'String')) returns contents of editymax as a double


% --- Executes during object creation, after setting all properties.
function editymax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editymax (see GCBO)
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


% --- Executes on button press in boton.
function boton_Callback(hObject, eventdata, handles)
% hObject    handle to boton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
boton1 = get(handles.seno,'Value');
grilla = get(handles.grilla,'Value');

xmin=str2double(get(handles.editxmin,'String'));
xmax=str2double(get(handles.editxmax,'String'));
ymin=str2double(get(handles.editymin,'String'));
ymax=str2double(get(handles.editymax,'String'));
axes(handles.axes1);

x=linspace(0,2*pi,100);
if boton1==1
  valor=sin(x);
  titulo='seno(x)';
else
valor=cos(x);
 titulo='coseno (x)';
end


y=valor;
plot(x,y);
try
axis([(xmin) (xmax) (ymin) (ymax)]);
catch
  axis([(0) (2*pi) (-1) (1)]);  
end
title(['Y = ',titulo]);
xlabel('X');
ylabel('Y');
if grilla==1
    grid on
end



% --- Executes on button press in seno.
function seno_Callback(hObject, eventdata, handles)
% hObject    handle to seno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of seno


% --- Executes on button press in coseno.
function coseno_Callback(hObject, eventdata, handles)
% hObject    handle to coseno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of coseno


% --- Executes when selected object is changed in trigonometricas.
function trigonometricas_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in trigonometricas 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

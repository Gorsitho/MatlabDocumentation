function varargout = graficaSenTan(varargin)
% GRAFICASENTAN MATLAB code for graficaSenTan.fig
%      GRAFICASENTAN, by itself, creates a new GRAFICASENTAN or raises the existing
%      singleton*.
%
%      H = GRAFICASENTAN returns the handle to a new GRAFICASENTAN or the handle to
%      the existing singleton*.
%
%      GRAFICASENTAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAFICASENTAN.M with the given input arguments.
%
%      GRAFICASENTAN('Property','Value',...) creates a new GRAFICASENTAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before graficaSenTan_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to graficaSenTan_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help graficaSenTan

% Last Modified by GUIDE v2.5 08-Nov-2017 16:57:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @graficaSenTan_OpeningFcn, ...
                   'gui_OutputFcn',  @graficaSenTan_OutputFcn, ...
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


% --- Executes just before graficaSenTan is made visible.
function graficaSenTan_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to graficaSenTan (see VARARGIN)

% Choose default command line output for graficaSenTan
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes graficaSenTan wait for user response (see UIRESUME)
% uiwait(handles.figure1);
Graficar(handles,0);
% --- Outputs from this function are returned to the command line.
function varargout = graficaSenTan_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in check_integral.
function check_integral_Callback(hObject, eventdata, handles)
% hObject    handle to check_integral (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of check_integral
Graficar(handles,1);

% --- Executes on button press in check_grilla.
function check_grilla_Callback(hObject, eventdata, handles)
% hObject    handle to check_grilla (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of check_grilla
Graficar(handles,1);

% --- Executes on button press in check_derivada.
function check_derivada_Callback(hObject, eventdata, handles)
% hObject    handle to check_derivada (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of check_derivada

Graficar(handles,1);

function editf_1_Callback(hObject, eventdata, handles)
% hObject    handle to editf_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editf_1 as text
%        str2double(get(hObject,'String')) returns contents of editf_1 as a double
Graficar(handles,1);

% --- Executes during object creation, after setting all properties.
function editf_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editf_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in check_integral2.
function check_integral2_Callback(hObject, eventdata, handles)
% hObject    handle to check_integral2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of check_integral2
Graficar(handles,2);

% --- Executes on button press in check_grilla2.
function check_grilla2_Callback(hObject, eventdata, handles)
% hObject    handle to check_grilla2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of check_grilla2
Graficar(handles,2);

% --- Executes on button press in check_derivada2.
function check_derivada2_Callback(hObject, eventdata, handles)
% hObject    handle to check_derivada2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of check_derivada2

Graficar(handles,2);

function editf_2_Callback(hObject, eventdata, handles)
% hObject    handle to editf_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editf_2 as text
%        str2double(get(hObject,'String')) returns contents of editf_2 as a double

Graficar(handles,2);
% --- Executes during object creation, after setting all properties.
function editf_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editf_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Graficar(handles,tipo)
%Grafica n1
if tipo==1
      axes(handles.axes1);
     cont=0;
    y=get(handles.editf_1,'String');
      x=linspace(-3,3,100);
      y=eval(y);
    if get(handles.check_integral,'value')==1
         cont=cont+2;
          syms x
        ysI=get(handles.editf_1,'String');
        ysI=int(eval(ysI));
        x=linspace(-3,3,100);
        ysI=eval(ysI);
        
       
    end
     if get(handles.check_derivada,'value')==1
        cont=cont+1;
        syms x
        ysD=get(handles.editf_1,'String');
        ysD=diff(eval(ysD));
        x=linspace(-3,3,100);
        ysD=eval(ysD);
      
    end

      switch cont
        case 0
      plot(x,y,'r-');
        case 1
          plot(x,ysD,'g-',x,y,'r-');
        case 2
          plot(x,ysI,'b-',x,y,'r-');
        case 3
          plot(x,ysI,'b-',x,ysD,'g-',x,y,'r-');
     end
    if get(handles.check_grilla,'value')==1
    grid on;
    else
    grid off; 
    end
       axis([-3 3 -10 10])
       
elseif tipo==0
      axes(handles.axes1);
      y=get(handles.editf_1,'String');
      x=linspace(-3,3,100);
      y=eval(y);
      plot(x,y,'r-');
      axis([-3 3 -10 10])
      axes(handles.axes2);
      y=get(handles.editf_2,'String');
      x=linspace(-3,3,100);
      y=eval(y);
      plot(x,y,'r-');
     axis([-3 3 -10 10])
      %Grafica n2
else
     axes(handles.axes2);
     cont=0;
      y=get(handles.editf_2,'String');
      x=linspace(-3,3,100);
      y=eval(y);
    if get(handles.check_integral2,'value')==1
         cont=cont+2;
          syms x
        ysI=get(handles.editf_2,'String');
        ysI=int(eval(ysI));
        x=linspace(-3,3,100);
        ysI=eval(ysI);
    end
    if get(handles.check_derivada2,'value')==1
       cont=cont+1;
        syms x
        ysD=get(handles.editf_2,'String');
        ysD=diff(eval(ysD));
        x=linspace(-3,3,100);
        ysD=eval(ysD);
    end

      switch cont
        case 0
      plot(x,y,'r-');
        case 1
          plot(x,ysD,'g-',x,y,'r-');
        case 2
          plot(x,ysI,'b-',x,y,'r-');
        case 3
          plot(x,ysI,'b-',x,ysD,'g-',x,y,'r-');
     end
    if get(handles.check_grilla2,'value')==1
    grid on;
    else
    grid off; 
    end
    

       axis([-3 3 -10 10])
end

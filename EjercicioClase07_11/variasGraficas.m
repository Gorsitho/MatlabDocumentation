function varargout = variasGraficas(varargin)
% VARIASGRAFICAS MATLAB code for variasGraficas.fig
%      VARIASGRAFICAS, by itself, creates a new VARIASGRAFICAS or raises the existing
%      singleton*.
%
%      H = VARIASGRAFICAS returns the handle to a new VARIASGRAFICAS or the handle to
%      the existing singleton*.
%
%      VARIASGRAFICAS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VARIASGRAFICAS.M with the given input arguments.
%
%      VARIASGRAFICAS('Property','Value',...) creates a new VARIASGRAFICAS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before variasGraficas_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to variasGraficas_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help variasGraficas

% Last Modified by GUIDE v2.5 08-Nov-2017 18:05:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @variasGraficas_OpeningFcn, ...
                   'gui_OutputFcn',  @variasGraficas_OutputFcn, ...
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


% --- Executes just before variasGraficas is made visible.
function variasGraficas_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to variasGraficas (see VARARGIN)

% Choose default command line output for variasGraficas
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes variasGraficas wait for user response (see UIRESUME)
% uiwait(handles.figure1);
graficar(handles);

% --- Outputs from this function are returned to the command line.
function varargout = variasGraficas_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
graficar(handles);

% --- Executes on button press in seno.
function seno_Callback(hObject, eventdata, handles)
% hObject    handle to seno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of seno
graficar(handles);

% --- Executes on button press in grafica.
function grafica_Callback(hObject, eventdata, handles)
% hObject    handle to grafica (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of grafica
graficar(handles);

% --- Executes on button press in tangente.
function tangente_Callback(hObject, eventdata, handles)
% hObject    handle to tangente (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tangente
graficar(handles);

% --- Executes on button press in coseno.
function coseno_Callback(hObject, eventdata, handles)
% hObject    handle to coseno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of coseno
graficar(handles);

% --- Executes on button press in vgraficas.
function vgraficas_Callback(hObject, eventdata, handles)
% hObject    handle to vgraficas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of vgraficas
graficar(handles);

function graficar(handles)

x=linspace(-pi,2*pi,100);

if get(handles.grafica,'value')==1
       cont=0;
    if get(handles.seno,'value')==1
        ys=sin(x);
        cont=cont+1;
    end
    if get(handles.tangente,'value')==1
        yt=tan(x);
        cont=cont+2;
    end
    if get(handles.coseno,'value')==1
        yc=cos(x);
        cont=cont+4;
    end
    
    switch cont
        case 0
            plot(0);
        case 1
            plot(x,ys,'g-o');
        case 2
            plot(x,yt,'b--');
        case 4
            plot(x,yc,'r-');
        case 3
            plot(x,ys,'g-o',x,yt,'b--');
        case 5
            plot(x,ys,'g-o',x,yc,'r-');
        case 6
            plot(x,yt,'b--',x,yc,'r-');
        case 7
            plot(x,yt,'b--',x,yc,'r-',x,ys,'g-o');
        otherwise
    end
        grid on;
        axis([-pi 2*pi -1 1])
    
else
    
         cont=0;
    if get(handles.seno,'value')==1
        ys=sin(x);
        cont=cont+1;
    end
    if get(handles.tangente,'value')==1
        yt=tan(x);
        cont=cont+2;
    end
    if get(handles.coseno,'value')==1
        yc=cos(x);
        cont=cont+4;
    end
    
    switch cont
        case 0
            plot(0);
            grid on;
            axis([-pi 2*pi -1 1])
        case 1
            subplot(1,1,1)
            plot(x,ys,'g-o');
            grid on;
        case 2
            subplot(1,1,1)
            plot(x,yt,'b--');
            grid on;
        case 4
            subplot(1,1,1)
            plot(x,yc,'r-');
            grid on;
        case 3
            subplot(2,1,1);
            plot(x,ys,'g-o');
            grid on;
            axis([-pi 2*pi -1 1])
            subplot(2,1,2);
            plot(x,yt,'b--');
            grid on;
            axis([-pi 2*pi -1 1])
        case 5
            subplot(2,1,1);
            plot(x,ys,'g-o');
            grid on;
            axis([-pi 2*pi -1 1])
            subplot(2,1,2);
            plot(x,yc,'r-');
            grid on;
            axis([-pi 2*pi -1 1])
        case 6
            subplot(2,1,1);
            plot(x,yt,'b--');
            grid on;
            axis([-pi 2*pi -1 1])
            subplot(2,1,2);
            plot(x,yc,'r-');
            grid on;
            axis([-pi 2*pi -1 1])
        case 7
            subplot(3,1,1);
            plot(x,yt,'b--');
            grid on;
            axis([-pi 2*pi -1 1])
            subplot(3,1,2);
            plot(x,yc,'r-');
            grid on;
            axis([-pi 2*pi -1 1])
            subplot(3,1,3);
            plot(x,ys,'g-o');    
            grid on;
            axis([-pi 2*pi -1 1])
            
        otherwise
    end
    axis([-pi 2*pi -1 1])
end

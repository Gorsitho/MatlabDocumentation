function varargout = ej_guide01(varargin)
% EJ_GUIDE01 MATLAB code for ej_guide01.fig
%      EJ_GUIDE01, by itself, creates a new EJ_GUIDE01 or raises the existing
%      singleton*.
%
%      H = EJ_GUIDE01 returns the handle to a new EJ_GUIDE01 or the handle to
%      the existing singleton*.
%
%      EJ_GUIDE01('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EJ_GUIDE01.M with the given input arguments.
%
%      EJ_GUIDE01('Property','Value',...) creates a new EJ_GUIDE01 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ej_guide01_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ej_guide01_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ej_guide01

% Last Modified by GUIDE v2.5 10-Nov-2017 10:56:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ej_guide01_OpeningFcn, ...
                   'gui_OutputFcn',  @ej_guide01_OutputFcn, ...
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


% --- Executes just before ej_guide01 is made visible.
function ej_guide01_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ej_guide01 (see VARARGIN)

% Choose default command line output for ej_guide01
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ej_guide01 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ej_guide01_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in cbSeno.
function cbSeno_Callback(hObject, eventdata, handles)
% hObject    handle to cbSeno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cbSeno
Graficar(handles);

% --- Executes on button press in cbCoseno.
function cbCoseno_Callback(hObject, eventdata, handles)
% hObject    handle to cbCoseno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cbCoseno
Graficar(handles);

% --- Executes on button press in cbTangente.
function cbTangente_Callback(hObject, eventdata, handles)
% hObject    handle to cbTangente (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cbTangente
Graficar(handles);

% --- Executes on button press in rbUnida.
function rbUnida_Callback(hObject, eventdata, handles)
% hObject    handle to rbUnida (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rbUnida
Graficar(handles);


function Graficar(handles)

    if get(handles.rbSeparada, 'Value') == 1
        %axes(handles.axes1);
        x = linspace(-pi,pi,100);
        cla reset;
        n = 0;
        
        if get(handles.cbSeno, 'Value') == 1
            n = n + 1;
            y(n,:) = sin(x);
        end
        
        if get(handles.cbCoseno, 'Value') == 1
            n = n + 1;
            y(n,:) = cos(x);
        end
        
        if get(handles.cbTangente, 'Value') == 1
            n = n + 1;
            y(n,:) = tan(x);
        end
        
        for j=1:n
            subplot(n,1,j);
            plot(x,y(j,:));
        end
        axis([-pi, pi, -5 5]);
    else
        %axes(handles.axes1);
        x = linspace(-pi,pi,100);
        cla reset;
        subplot(1,1,1);
        if get(handles.cbSeno, 'Value') == 1
            plot(x,sin(x));
            hold on;
        end
        
        if get(handles.cbCoseno, 'Value') == 1
            plot(x,cos(x));
            hold on;
        end
        
        if get(handles.cbTangente, 'Value') == 1
            plot(x,tan(x));
            hold on;
        end
        axis([-pi, pi, -5 5]);
        hold off;
    end


% --- Executes on button press in rbSeparada.
function rbSeparada_Callback(hObject, eventdata, handles)
% hObject    handle to rbSeparada (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rbSeparada
Graficar(handles);

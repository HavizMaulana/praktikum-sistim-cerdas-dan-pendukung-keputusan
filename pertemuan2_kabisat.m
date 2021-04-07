function varargout = pertemuan2_kabisat(varargin)
% PERTEMUAN2_KABISAT MATLAB code for pertemuan2_kabisat.fig
%      PERTEMUAN2_KABISAT, by itself, creates a new PERTEMUAN2_KABISAT or raises the existing
%      singleton*.
%
%      H = PERTEMUAN2_KABISAT returns the handle to a new PERTEMUAN2_KABISAT or the handle to
%      the existing singleton*.
%
%      PERTEMUAN2_KABISAT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PERTEMUAN2_KABISAT.M with the given input arguments.
%
%      PERTEMUAN2_KABISAT('Property','Value',...) creates a new PERTEMUAN2_KABISAT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before pertemuan2_kabisat_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to pertemuan2_kabisat_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help pertemuan2_kabisat

% Last Modified by GUIDE v2.5 07-Apr-2021 21:50:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @pertemuan2_kabisat_OpeningFcn, ...
                   'gui_OutputFcn',  @pertemuan2_kabisat_OutputFcn, ...
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


% --- Executes just before pertemuan2_kabisat is made visible.
function pertemuan2_kabisat_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to pertemuan2_kabisat (see VARARGIN)

% Choose default command line output for pertemuan2_kabisat
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes pertemuan2_kabisat wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = pertemuan2_kabisat_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function input_Callback(hObject, eventdata, handles)
% hObject    handle to input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input as text
%        str2double(get(hObject,'String')) returns contents of input as a double


% --- Executes during object creation, after setting all properties.
function input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in convert.
function convert_Callback(hObject, eventdata, handles)
% hObject    handle to convert (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
input = get(handles.input, 'string');
input = str2double(input);
hasil = mod(input,4);

if (hasil == 0)
    output {= 'tahun ', input, ' adalah tahun kabisat'}
    set(handles.output,'string',(output));
else
    output {= 'tahun ', input, ' bukan tahun kabisat'}
    set(handles.output,'string',(output));
end


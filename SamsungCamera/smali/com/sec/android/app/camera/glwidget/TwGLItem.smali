.class public Lcom/sec/android/app/camera/glwidget/TwGLItem;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLItem.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnFocusListener;
.implements Lcom/sec/android/glview/TwGLView$OnKeyListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CHECKBOX_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final CHECKBOX_X_OFFSET_FROM_RIGHT:I = 0x0

.field public static final EDITABLESHORTCUT_TYPE:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final EDITABLESHORTCUT_TYPE_BUTTON_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EDITABLESHORTCUT_TYPE_BUTTON_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EDITABLESHORTCUT_TYPE_FONT_SIZE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EDITABLESHORTCUT_TYPE_FONT_SIZE_SMALL:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EDITABLESHORTCUT_TYPE_TEXT_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EDITABLESHORTCUT_TYPE_TEXT_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EDITABLESHORTCUT_TYPE_TEXT_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EDITABLESHORTCUT_TYPE_TEXT_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_SELECTOR_HIGHLIGHT_COLOR:I = 0x0

.field public static final LIST_TYPE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_TYPE_BUTTON_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_TYPE_BUTTON_IMAGE_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_TYPE_BUTTON_IMAGE_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_TYPE_BUTTON_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_TYPE_TEXT_FONT_SIZE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_TYPE_TEXT_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_TYPE_TEXT_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_TYPE_TEXT_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_TYPE_TEXT_WIDTH:I = 0x0

.field public static final OPTION_TYPE:I = 0x5

#the value of this static final field might be set in the static constructor
.field private static final OPTION_TYPE_BUTTON_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final OPTION_TYPE_BUTTON_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final OPTION_TYPE_DATA_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final OPTION_TYPE_DATA_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final OPTION_TYPE_DATA_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final OPTION_TYPE_DATA_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final OPTION_TYPE_TEXT_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final OPTION_TYPE_TEXT_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final OPTION_TYPE_TEXT_WIDTH:I = 0x0

.field private static final ROTATE_ANIMATION_DURATION:I = 0x12c

#the value of this static final field might be set in the static constructor
.field private static final SEPARATOR_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SEPARATOR_POS_X:I = 0x0

.field public static final SETTINGS_TYPE:I = 0x3

#the value of this static final field might be set in the static constructor
.field private static final SETTING_TYPE_BUTTON_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SETTING_TYPE_BUTTON_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SETTING_TYPE_DATA_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SETTING_TYPE_DATA_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SETTING_TYPE_DATA_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SETTING_TYPE_DATA_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SETTING_TYPE_TEXT_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SETTING_TYPE_TEXT_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SETTING_TYPE_TEXT_WIDTH:I = 0x0

.field public static final SIDEBUTTON_TYPE:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final SIDEBUTTON_TYPE_BUTTON_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SIDEBUTTON_TYPE_BUTTON_WIDTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TwGLItem"

#the value of this static final field might be set in the static constructor
.field private static final THUMBNAIL_ITEM_WIDTH:I = 0x0

.field public static final THUMBNAIL_TYPE:I = 0x4

#the value of this static final field might be set in the static constructor
.field private static final THUMBNAIL_TYPE_BUTTON_MARGIN_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final THUMBNAIL_TYPE_BUTTON_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final THUMBNAIL_TYPE_TEXT_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final THUMBNAIL_TYPE_TEXT_Y:I = 0x0

.field public static final UNKNOWN_TYPE:I = -0x1


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mAnchor:Lcom/sec/android/glview/TwGLImage;

.field private mButton:Lcom/sec/android/glview/TwGLButton;

.field private mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

.field private mCurrentType:I

.field private mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

.field private mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

.field private mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

.field private mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

.field private mDim:Z

.field private mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

.field private mText:Lcom/sec/android/glview/TwGLText;

.field private mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

.field private mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

.field private mToggle:Z

.field private mZOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 55
    const v0, 0x7f07011e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_IMAGE_POS_X:I

    .line 56
    const v0, 0x7f07011f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_IMAGE_POS_Y:I

    .line 57
    const v0, 0x7f070120

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_WIDTH:I

    .line 58
    const v0, 0x7f070121

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_HEIGHT:I

    .line 59
    const v0, 0x7f070122

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_POS_X:I

    .line 60
    const v0, 0x7f070123

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_POS_Y:I

    .line 61
    const v0, 0x7f070124

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_WIDTH:I

    .line 62
    const v0, 0x7f070125

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_HEIGHT:I

    .line 63
    const v0, 0x7f080018

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    .line 64
    const v0, 0x7f070127

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->CHECKBOX_X_OFFSET_FROM_RIGHT:I

    .line 65
    const v0, 0x7f070128

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->CHECKBOX_POS_Y:I

    .line 66
    const v0, 0x7f070129

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_POS_X:I

    .line 67
    const v0, 0x7f07012a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_POS_Y:I

    .line 68
    const v0, 0x7f07012b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_WIDTH:I

    .line 69
    const v0, 0x7f07012c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_WIDTH:I

    .line 70
    const v0, 0x7f07012d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_HEIGHT:I

    .line 71
    const v0, 0x7f07012f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_POS_X:I

    .line 72
    const v0, 0x7f070130

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_POS_Y:I

    .line 73
    const v0, 0x7f07012e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_WIDTH:I

    .line 74
    const v0, 0x7f070131

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_HEIGHT:I

    .line 76
    const v0, 0x7f07007e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_TEXT_POS_X:I

    .line 77
    const v0, 0x7f07007f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_TEXT_POS_Y:I

    .line 78
    const v0, 0x7f070080

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_TEXT_WIDTH:I

    .line 79
    const v0, 0x7f070081

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_BUTTON_WIDTH:I

    .line 80
    const v0, 0x7f070082

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_BUTTON_HEIGHT:I

    .line 81
    const v0, 0x7f070084

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_POS_X:I

    .line 82
    const v0, 0x7f070085

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_POS_Y:I

    .line 83
    const v0, 0x7f070083

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_WIDTH:I

    .line 84
    const v0, 0x7f070086

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_HEIGHT:I

    .line 86
    const v0, 0x7f0700c1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SIDEBUTTON_TYPE_BUTTON_WIDTH:I

    .line 87
    const v0, 0x7f0700c2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SIDEBUTTON_TYPE_BUTTON_HEIGHT:I

    .line 88
    const v0, 0x7f070136

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_WIDTH:I

    .line 89
    const v0, 0x7f070137

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_HEIGHT:I

    .line 90
    const v0, 0x7f070138

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_X:I

    .line 91
    const v0, 0x7f070139

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_Y:I

    .line 92
    const v0, 0x7f07013a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_X:I

    .line 93
    const v0, 0x7f07013b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_Y:I

    .line 94
    const v0, 0x7f07013c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_WIDTH:I

    .line 95
    const v0, 0x7f07013d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_HEIGHT:I

    .line 96
    const v0, 0x7f080019

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_FONT_SIZE:I

    .line 97
    const v0, 0x7f080002

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_FONT_SIZE_SMALL:I

    .line 99
    const v0, 0x7f07013e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    .line 100
    const v0, 0x7f07013f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_POS_X:I

    .line 101
    const v0, 0x7f07006e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_WIDTH:I

    .line 102
    const v0, 0x7f070070

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_MARGIN_Y:I

    .line 103
    const v0, 0x7f07006c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_ITEM_WIDTH:I

    .line 104
    const v0, 0x7f070071

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_HEIGHT:I

    .line 105
    const v0, 0x7f070072

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_Y:I

    .line 107
    const/16 v0, 0xff

    const/16 v1, 0x8

    const/16 v2, 0x83

    const/16 v3, 0xd3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    .locals 7
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "data"
    .parameter "command"
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    .line 164
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 123
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    .line 134
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDim:Z

    .line 135
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    .line 165
    iput-object p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 166
    iput-object p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 167
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTitle:Ljava/lang/String;

    .line 171
    invoke-direct {p0, p8}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->initContents(I)V

    .line 172
    invoke-virtual {p0, p8}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setContentType(I)V

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/app/camera/glwidget/TwGLItem;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    .locals 7
    .parameter "activityContext"
    .parameter "width"
    .parameter "height"
    .parameter "data"
    .parameter "command"
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 150
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 123
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    .line 134
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDim:Z

    .line 135
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    .line 151
    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 152
    iput-object p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 153
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTitle:Ljava/lang/String;

    .line 157
    invoke-direct {p0, p6}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->initContents(I)V

    .line 158
    invoke-virtual {p0, p6}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setContentType(I)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/app/camera/glwidget/TwGLItem;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    .locals 3
    .parameter "activityContext"
    .parameter "data"
    .parameter "command"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 138
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 123
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    .line 134
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDim:Z

    .line 135
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    .line 139
    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 140
    iput-object p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 141
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 143
    invoke-direct {p0, p4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->initContents(I)V

    .line 144
    invoke-virtual {p0, p4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setContentType(I)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/app/camera/glwidget/TwGLItem;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;)V
    .locals 8
    .parameter "glContext"

    .prologue
    const v4, 0x7f0201fb

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 178
    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 123
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    .line 134
    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDim:Z

    .line 135
    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    .line 180
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    move-object v1, p1

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 183
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const-string v1, "      "

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    .line 185
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->diableDrag()V

    .line 186
    return-void
.end method

.method private clearContent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->clear()V

    .line 297
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->clear()V

    .line 302
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 307
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_3

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->clear()V

    .line 312
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_4

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->clear()V

    .line 317
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    .line 319
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_5

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->clear()V

    .line 322
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    .line 324
    :cond_5
    return-void
.end method

.method private diableDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 189
    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLView;->setDraggable(Z)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setDraggable(Z)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setDraggable(Z)V

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setDraggable(Z)V

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setDraggable(Z)V

    .line 203
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_4

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setDraggable(Z)V

    .line 205
    :cond_4
    return-void
.end method

.method private initContents(I)V
    .locals 16
    .parameter "type"

    .prologue
    .line 346
    const/4 v15, 0x0

    .line 347
    .local v15, width:F
    const/4 v14, 0x0

    .line 349
    .local v14, height:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-nez v1, :cond_9

    if-nez p1, :cond_9

    .line 351
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-eqz v1, :cond_8

    .line 352
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 358
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLView;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 361
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDim:Z

    if-nez v1, :cond_0

    .line 362
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 364
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_17

    .line 365
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    .line 366
    .end local v15           #width:F
    .local v5, width:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    .line 436
    .end local v14           #height:F
    .local v6, height:F
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-nez v1, :cond_1

    .line 437
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    .line 439
    invoke-static {}, Landroid/util/LocaleUtil;->isLayoutDirectionRtl()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 440
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 446
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-nez v1, :cond_2

    if-nez p1, :cond_2

    .line 447
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->CHECKBOX_X_OFFSET_FROM_RIGHT:I

    int-to-float v3, v3

    sub-float v3, v5, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->CHECKBOX_POS_Y:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v7

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    .line 448
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    .line 450
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-nez v1, :cond_3

    const/4 v1, 0x3

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 451
    invoke-static {}, Landroid/util/LocaleUtil;->isLayoutDirectionRtl()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 452
    new-instance v7, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_POS_X:I

    int-to-float v9, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_POS_Y:I

    int-to-float v10, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_WIDTH:I

    int-to-float v11, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_HEIGHT:I

    int-to-float v12, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v13

    invoke-direct/range {v7 .. v13}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFFI)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    .line 455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setAlign(II)V

    .line 463
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    .line 465
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-nez v1, :cond_4

    const/4 v1, 0x5

    move/from16 v0, p1

    if-ne v0, v1, :cond_4

    .line 466
    invoke-static {}, Landroid/util/LocaleUtil;->isLayoutDirectionRtl()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 467
    new-instance v7, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_TEXT_POS_X:I

    int-to-float v9, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_POS_Y:I

    int-to-float v10, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_WIDTH:I

    int-to-float v11, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_HEIGHT:I

    int-to-float v12, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v13

    invoke-direct/range {v7 .. v13}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFFI)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    .line 470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setAlign(II)V

    .line 478
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    .line 480
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v1, :cond_5

    const/4 v1, 0x1

    move/from16 v0, p1

    if-eq v0, v1, :cond_5

    .line 481
    new-instance v7, Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    int-to-float v12, v1

    const v13, 0x7f0201b2

    move v11, v5

    invoke-direct/range {v7 .. v13}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 484
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_6

    .line 485
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->diableDrag()V

    .line 487
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_7

    .line 488
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    invoke-direct {v2, v3, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setPaddings(Landroid/graphics/Rect;)V

    .line 490
    :cond_7
    return-void

    .line 355
    .end local v5           #width:F
    .end local v6           #height:F
    .restart local v14       #height:F
    .restart local v15       #width:F
    :cond_8
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    goto/16 :goto_0

    .line 368
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-nez v1, :cond_c

    const/4 v1, 0x3

    move/from16 v0, p1

    if-ne v0, v1, :cond_c

    .line 369
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-eqz v1, :cond_b

    .line 370
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 376
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLView;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnButtonHighlightChangedListener(Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;)V

    .line 380
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDim:Z

    if-nez v1, :cond_a

    .line 381
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 383
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_17

    .line 384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    .line 385
    .end local v15           #width:F
    .restart local v5       #width:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    .end local v14           #height:F
    .restart local v6       #height:F
    goto/16 :goto_1

    .line 373
    .end local v5           #width:F
    .end local v6           #height:F
    .restart local v14       #height:F
    .restart local v15       #width:F
    :cond_b
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    goto :goto_5

    .line 387
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-nez v1, :cond_f

    const/4 v1, 0x5

    move/from16 v0, p1

    if-ne v0, v1, :cond_f

    .line 388
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-eqz v1, :cond_e

    .line 389
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 395
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLView;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnButtonHighlightChangedListener(Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;)V

    .line 399
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDim:Z

    if-nez v1, :cond_d

    .line 400
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 402
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_17

    .line 403
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    .line 404
    .end local v15           #width:F
    .restart local v5       #width:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    .end local v14           #height:F
    .restart local v6       #height:F
    goto/16 :goto_1

    .line 392
    .end local v5           #width:F
    .end local v6           #height:F
    .restart local v14       #height:F
    .restart local v15       #width:F
    :cond_e
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    goto :goto_6

    .line 406
    :cond_f
    const/4 v1, 0x4

    move/from16 v0, p1

    if-ne v0, v1, :cond_11

    .line 407
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v7

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    .line 408
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v1, :cond_10

    .line 409
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 412
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setTitle(Ljava/lang/String;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setExtraDescription(Z)V

    .line 415
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_Y:I

    int-to-float v4, v4

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_ITEM_WIDTH:I

    int-to-float v5, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_HEIGHT:I

    int-to-float v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    .line 416
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setAlign(II)V

    .line 417
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    move v6, v14

    .end local v14           #height:F
    .restart local v6       #height:F
    move v5, v15

    .end local v15           #width:F
    .restart local v5       #width:F
    goto/16 :goto_1

    .line 419
    .end local v5           #width:F
    .end local v6           #height:F
    .restart local v14       #height:F
    .restart local v15       #width:F
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-eqz v1, :cond_13

    .line 420
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    .line 424
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTitle(Ljava/lang/String;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 427
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDim:Z

    if-nez v1, :cond_12

    const/4 v1, 0x1

    move/from16 v0, p1

    if-eq v0, v1, :cond_12

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 430
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v1, :cond_17

    .line 431
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    .line 432
    .end local v15           #width:F
    .restart local v5       #width:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    .end local v14           #height:F
    .restart local v6       #height:F
    goto/16 :goto_1

    .line 422
    .end local v5           #width:F
    .end local v6           #height:F
    .restart local v14       #height:F
    .restart local v15       #width:F
    :cond_13
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v7

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    goto :goto_7

    .line 442
    .end local v14           #height:F
    .end local v15           #width:F
    .restart local v5       #width:F
    .restart local v6       #height:F
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_2

    .line 457
    :cond_15
    new-instance v7, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_POS_X:I

    int-to-float v9, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_POS_Y:I

    int-to-float v10, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_WIDTH:I

    int-to-float v11, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_HEIGHT:I

    int-to-float v12, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v13

    invoke-direct/range {v7 .. v13}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFFI)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    .line 460
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setAlign(II)V

    goto/16 :goto_3

    .line 472
    :cond_16
    new-instance v7, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_POS_X:I

    int-to-float v9, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_POS_Y:I

    int-to-float v10, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_WIDTH:I

    int-to-float v11, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_HEIGHT:I

    int-to-float v12, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v13

    invoke-direct/range {v7 .. v13}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFFI)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    .line 475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setAlign(II)V

    goto/16 :goto_4

    .end local v5           #width:F
    .end local v6           #height:F
    .restart local v14       #height:F
    .restart local v15       #width:F
    :cond_17
    move v6, v14

    .end local v14           #height:F
    .restart local v6       #height:F
    move v5, v15

    .end local v15           #width:F
    .restart local v5       #width:F
    goto/16 :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;->removeButton(Lcom/sec/android/app/camera/glwidget/TwGLItem;)V

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->clearContent()V

    .line 287
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 288
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 289
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 290
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 291
    return-void
.end method

.method public getButtonType()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    return v0
.end method

.method public getCommand()Lcom/sec/android/app/camera/command/MenuCommand;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    return-object v0
.end method

.method public getCommandId()I
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    .line 338
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x63

    goto :goto_0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 665
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    return v0
.end method

.method public getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    return-object v0
.end method

.method public getDim()Z
    .locals 1

    .prologue
    .line 922
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDim:Z

    return v0
.end method

.method public getScrollHint()Z
    .locals 1

    .prologue
    .line 918
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonHighlightChanged(Z)V
    .locals 2
    .parameter "isHighlighted"

    .prologue
    .line 951
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_0

    .line 952
    if-eqz p1, :cond_1

    .line 953
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->WHITE_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setColor(I)V

    .line 958
    :cond_0
    :goto_0
    return-void

    .line 955
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->BLUE_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setColor(I)V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 12
    .parameter "view"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x2

    const/high16 v9, 0x4000

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 812
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v3, :cond_0

    move v3, v4

    .line 907
    :goto_0
    return v3

    .line 813
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    .line 814
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_0

    .line 816
    :cond_2
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v3, v5, :cond_3

    move v3, v4

    .line 817
    goto :goto_0

    .line 820
    :cond_3
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v3, v10, :cond_5

    .line 821
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setSelectedMenuId(I)V

    .line 822
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    const/16 v6, 0x24

    if-eq v3, v6, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    const/16 v6, 0xbce

    if-ne v3, v6, :cond_5

    .line 823
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setToggleButton()V

    .line 824
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/CameraSettings;->setSelfToggle(Z)V

    .line 828
    :cond_5
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_8

    .line 830
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v2

    .line 832
    .local v2, menuid:I
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v0

    .line 833
    .local v0, commandid:I
    if-ne v0, v10, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v3

    if-ne v3, v5, :cond_7

    .line 834
    const/16 v0, 0x44

    .line 837
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    .line 838
    .local v1, menu:Lcom/sec/android/app/camera/MenuBase;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->isAnimationFinished()Z

    move-result v3

    if-nez v3, :cond_8

    move v3, v4

    .line 839
    goto/16 :goto_0

    .line 842
    .end local v0           #commandid:I
    .end local v1           #menu:Lcom/sec/android/app/camera/MenuBase;
    .end local v2           #menuid:I
    :cond_8
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v3, v11, :cond_b

    .line 845
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x47

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    .line 847
    .restart local v1       #menu:Lcom/sec/android/app/camera/MenuBase;
    if-eqz v1, :cond_9

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    move v3, v4

    .line 848
    goto/16 :goto_0

    :cond_a
    move-object v3, v1

    .line 850
    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLHDROptionMenu;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLHDROptionMenu;->resetSettingsText()V

    .line 851
    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLHDROptionMenu;

    .end local v1           #menu:Lcom/sec/android/app/camera/MenuBase;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLHDROptionMenu;->setSelectedSettingMenuId(I)V

    .line 854
    :cond_b
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_f

    .line 856
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    instance-of v3, v3, Lcom/sec/android/app/camera/Camera;

    if-eqz v3, :cond_d

    .line 857
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x1b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    .line 862
    .restart local v1       #menu:Lcom/sec/android/app/camera/MenuBase;
    :goto_1
    if-eqz v1, :cond_c

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    move v3, v4

    .line 863
    goto/16 :goto_0

    .line 859
    .end local v1           #menu:Lcom/sec/android/app/camera/MenuBase;
    :cond_d
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0xbd0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    .restart local v1       #menu:Lcom/sec/android/app/camera/MenuBase;
    goto :goto_1

    :cond_e
    move-object v3, v1

    .line 865
    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->resetSettingsText()V

    .line 866
    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    .end local v1           #menu:Lcom/sec/android/app/camera/MenuBase;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setSelectedSettingMenuId(I)V

    .line 869
    :cond_f
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v3, :cond_10

    .line 870
    const-string v3, "TwGLItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Execute Menu!!!!, CurrentType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", CommandId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/command/MenuCommand;->setZOrder(I)V

    .line 872
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/command/MenuCommand;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 874
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v3, v11, :cond_16

    .line 875
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v6

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    div-float/2addr v7, v9

    const/high16 v8, 0x4040

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v7

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    div-float/2addr v8, v9

    const/high16 v9, 0x4040

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v3, v6, v7}, Lcom/sec/android/app/camera/command/MenuCommand;->setLaunchPosition(FF)V

    .line 884
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .line 887
    :cond_10
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v6, 0x3

    if-eq v3, v6, :cond_11

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v3, v11, :cond_15

    .line 889
    :cond_11
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v2

    .line 891
    .restart local v2       #menuid:I
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v0

    .line 892
    .restart local v0       #commandid:I
    if-ne v0, v10, :cond_12

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v3

    if-ne v3, v5, :cond_12

    .line 893
    const/16 v0, 0x44

    .line 895
    :cond_12
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    .line 896
    .restart local v1       #menu:Lcom/sec/android/app/camera/MenuBase;
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v3, :cond_13

    .line 897
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v3

    if-nez v3, :cond_17

    .line 898
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->WHITE_TEXT_COLOR:I

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/glview/TwGLText;->setBoldColor(ZI)V

    .line 903
    :cond_13
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    const/16 v4, 0x24

    if-eq v3, v4, :cond_14

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    const/16 v4, 0xbce

    if-ne v3, v4, :cond_15

    .line 904
    :cond_14
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/CameraSettings;->setSelfToggle(Z)V

    .end local v0           #commandid:I
    .end local v1           #menu:Lcom/sec/android/app/camera/MenuBase;
    .end local v2           #menuid:I
    :cond_15
    move v3, v5

    .line 907
    goto/16 :goto_0

    .line 880
    :cond_16
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v6

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v7

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v3, v6, v7}, Lcom/sec/android/app/camera/command/MenuCommand;->setLaunchPosition(FF)V

    goto/16 :goto_2

    .line 900
    .restart local v0       #commandid:I
    .restart local v1       #menu:Lcom/sec/android/app/camera/MenuBase;
    .restart local v2       #menuid:I
    :cond_17
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->BLUE_TEXT_COLOR:I

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/glview/TwGLText;->setBoldColor(ZI)V

    goto :goto_3
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 4
    .parameter "gl"

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v2

    .line 671
    .local v2, matrix:[F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 672
    .local v0, clipRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRotatable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 673
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 674
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 675
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, p1, v2, v0}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 678
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->onDraw(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 680
    :cond_1
    return-void
.end method

.method public onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z
    .locals 1
    .parameter "view"
    .parameter "focusStatus"

    .prologue
    .line 804
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    invoke-interface {v0, p0, p2}, Lcom/sec/android/glview/TwGLView$OnFocusListener;->onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z

    .line 806
    const/4 v0, 0x1

    .line 808
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    .line 779
    const/4 v0, 0x1

    .line 785
    :goto_0
    return v0

    .line 782
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDim:Z

    if-eqz v0, :cond_1

    .line 783
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    .line 792
    const/4 v0, 0x1

    .line 798
    :goto_0
    return v0

    .line 795
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDim:Z

    if-eqz v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "view"
    .parameter "event"

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v2

    const/16 v3, 0x63

    if-ne v2, v3, :cond_0

    .line 721
    const/4 v2, 0x1

    .line 736
    :goto_0
    return v2

    .line 724
    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDim:Z

    if-eqz v2, :cond_1

    .line 725
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v2, p1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 728
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 729
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v0

    .line 730
    .local v0, id:I
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v1

    .line 731
    .local v1, res:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 732
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v4, v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    .line 733
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 734
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v4, v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSubTitle(Ljava/lang/String;)V

    .line 736
    .end local v0           #id:I
    .end local v1           #res:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v2, p1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public resetSettingsText()V
    .locals 3

    .prologue
    .line 926
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->WHITE_TEXT_COLOR:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setBoldColor(ZI)V

    .line 929
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 280
    :cond_3
    return-void
.end method

.method public setAnchor(Lcom/sec/android/glview/TwGLImage;)V
    .locals 0
    .parameter "anchor"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 209
    return-void
.end method

.method public setContentType(I)V
    .locals 8
    .parameter "type"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 493
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v0, p1, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 499
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 500
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 501
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 503
    invoke-virtual {p0, v5}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 504
    invoke-virtual {p0, v5}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 505
    invoke-virtual {p0, v5}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 507
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDim:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-eq v0, v3, :cond_3

    .line 508
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_3

    .line 509
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 513
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_5

    .line 514
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_4

    .line 515
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 516
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 518
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    if-eqz v0, :cond_0

    .line 523
    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-nez v0, :cond_8

    .line 524
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 525
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_IMAGE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_IMAGE_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 526
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 527
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 529
    invoke-static {}, Landroid/util/LocaleUtil;->isLayoutDirectionRtl()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 531
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_WIDTH:I

    add-int/lit8 v1, v1, -0x5

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 532
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 538
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 539
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setTextVisibility(Z)V

    .line 540
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setHighlightVisibility(Z)V

    .line 542
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 543
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayout(FF)V

    .line 545
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 546
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 547
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 660
    :cond_6
    :goto_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDim:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setDim(Z)V

    .line 661
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->resetSize()V

    goto/16 :goto_0

    .line 534
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 535
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_1

    .line 548
    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v0, v3, :cond_9

    .line 549
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_6

    .line 550
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSize(FF)V

    .line 551
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setResourceOffset(FF)Z

    .line 552
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTextPosition(FF)V

    .line 557
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_FONT_SIZE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 560
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 561
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 562
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 563
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 564
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTextVisibility(Z)V

    .line 565
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setHighlightVisibility(Z)V

    .line 566
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 568
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_2

    .line 570
    :cond_9
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 571
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_ITEM_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_WIDTH:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_MARGIN_Y:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setSize(FF)V

    .line 572
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_ITEM_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_MARGIN_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setResourceOffset(FF)Z

    .line 573
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 574
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_2

    .line 575
    :cond_a
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v0, v6, :cond_d

    .line 576
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 578
    invoke-static {}, Landroid/util/LocaleUtil;->isLayoutDirectionRtl()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 581
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 582
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 589
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 591
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 593
    invoke-static {}, Landroid/util/LocaleUtil;->isLayoutDirectionRtl()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 594
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTextPosition(FF)V

    .line 595
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6, v4}, Lcom/sec/android/glview/TwGLButton;->setTextAlign(II)V

    .line 601
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setTextVisibility(Z)V

    .line 602
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setHighlightVisibility(Z)V

    .line 604
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 605
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayout(FF)V

    .line 607
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 608
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 609
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_2

    .line 584
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 585
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 586
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_3

    .line 597
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTextPosition(FF)V

    .line 598
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setTextAlign(II)V

    goto :goto_4

    .line 610
    :cond_d
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    .line 611
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 613
    invoke-static {}, Landroid/util/LocaleUtil;->isLayoutDirectionRtl()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 614
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_TEXT_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 616
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 617
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 618
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 625
    :goto_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 627
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 629
    invoke-static {}, Landroid/util/LocaleUtil;->isLayoutDirectionRtl()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 630
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_TEXT_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTextPosition(FF)V

    .line 631
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6, v4}, Lcom/sec/android/glview/TwGLButton;->setTextAlign(II)V

    .line 637
    :goto_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setTextVisibility(Z)V

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setHighlightVisibility(Z)V

    .line 640
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 641
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_BUTTON_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayout(FF)V

    .line 643
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 644
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 645
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_2

    .line 620
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 621
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 622
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_5

    .line 633
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->OPTION_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTextPosition(FF)V

    .line 634
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setTextAlign(II)V

    goto :goto_6

    .line 646
    :cond_10
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v0, v4, :cond_6

    .line 647
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_11

    .line 648
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SIDEBUTTON_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SIDEBUTTON_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSize(FF)V

    .line 649
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    const v1, 0x7f0700c3

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    const v2, 0x7f0700c4

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setResourceOffset(FF)Z

    .line 650
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTextVisibility(Z)V

    .line 651
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setHighlightVisibility(Z)V

    .line 652
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 654
    :cond_11
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 655
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 656
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setRotateAnimationDuration(I)V

    .line 657
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    goto/16 :goto_2
.end method

.method public setDim(Z)V
    .locals 6
    .parameter "dimmed"

    .prologue
    const/4 v5, 0x0

    const v4, 0x3e4ccccd

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 217
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDim:Z

    .line 218
    if-eqz p1, :cond_8

    .line 219
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-eq v0, v3, :cond_4

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setDim(Z)V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 265
    :cond_3
    :goto_0
    return-void

    .line 235
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_5

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setDim(Z)V

    .line 238
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_6

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 241
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_7

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 244
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    goto :goto_0

    .line 249
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-eq v0, v3, :cond_9

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setDim(Z)V

    .line 253
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_a

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 256
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_b

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 259
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    goto :goto_0
.end method

.method public setHoverPopupGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 975
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setHoverPopupGravity(I)V

    .line 977
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setHoverPopupGravity(I)V

    .line 980
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    .line 981
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setHoverPopupGravity(I)V

    .line 983
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_2

    .line 984
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setHoverPopupGravity(I)V

    .line 986
    :cond_2
    return-void
.end method

.method public setHoverPopupOffset(II)V
    .locals 1
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 961
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setHoverPopupOffset(II)V

    .line 963
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setHoverPopupOffset(II)V

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    .line 967
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setHoverPopupOffset(II)V

    .line 969
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_2

    .line 970
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setHoverPopupOffset(II)V

    .line 972
    :cond_2
    return-void
.end method

.method public setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V
    .locals 2
    .parameter "l"

    .prologue
    const/4 v1, 0x0

    .line 741
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    .line 742
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    if-nez v0, :cond_7

    .line 743
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 746
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 747
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_2

    .line 748
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 749
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_3

    .line 750
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 751
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_4

    .line 752
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 753
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_5

    .line 754
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 755
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_6

    .line 756
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 773
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 774
    return-void

    .line 758
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_8

    .line 759
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 760
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_9

    .line 761
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 762
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_a

    .line 763
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 764
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_b

    .line 765
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 766
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_c

    .line 767
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 768
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_d

    .line 769
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 770
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_6

    .line 771
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    goto :goto_0
.end method

.method public setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V
    .locals 2
    .parameter "l"

    .prologue
    const/4 v1, 0x0

    .line 684
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 685
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-nez v0, :cond_7

    .line 686
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 689
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_2

    .line 691
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 692
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_3

    .line 693
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 694
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_4

    .line 695
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 696
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_5

    .line 697
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 698
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_6

    .line 699
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 716
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 717
    return-void

    .line 701
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_8

    .line 702
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 703
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_9

    .line 704
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 705
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_a

    .line 706
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 707
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_b

    .line 708
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 709
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_c

    .line 710
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 711
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_d

    .line 712
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 713
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_6

    .line 714
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    goto :goto_0
.end method

.method public setToggleButton()V
    .locals 5

    .prologue
    .line 932
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    .line 933
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v2, :cond_0

    .line 934
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setToggleButton()V

    .line 935
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v0

    .line 936
    .local v0, id:I
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v1

    .line 937
    .local v1, res:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    if-eqz v1, :cond_0

    .line 938
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v4, v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSubTitle(Ljava/lang/String;)V

    .line 940
    .end local v0           #id:I
    .end local v1           #res:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v2, :cond_1

    .line 941
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->setToggleButton()V

    .line 942
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v0

    .line 943
    .restart local v0       #id:I
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v1

    .line 944
    .restart local v1       #res:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    if-eqz v1, :cond_1

    .line 945
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v4, v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    .line 947
    .end local v0           #id:I
    .end local v1           #res:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_1
    return-void
.end method

.method public setZOrder(I)V
    .locals 0
    .parameter "zOrder"

    .prologue
    .line 212
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    .line 213
    return-void
.end method

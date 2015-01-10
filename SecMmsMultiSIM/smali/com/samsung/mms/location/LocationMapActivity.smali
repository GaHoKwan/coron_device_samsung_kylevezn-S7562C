.class public Lcom/samsung/mms/location/LocationMapActivity;
.super Landroid/app/Activity;
.source "LocationMapActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/mms/location/LocationMapActivity$LocationItemContextMenuListener;,
        Lcom/samsung/mms/location/LocationMapActivity$LocationContextMenuClickListener;,
        Lcom/samsung/mms/location/LocationMapActivity$LocationItemClickListener;,
        Lcom/samsung/mms/location/LocationMapActivity$ReverseGeocodeHandler;,
        Lcom/samsung/mms/location/LocationMapActivity$AddressAdapter;,
        Lcom/samsung/mms/location/LocationMapActivity$searchOption;
    }
.end annotation


# static fields
.field private static final BITMAP_THUMB_SIZE_HEIGHT:I = 0xc8

#the value of this static final field might be set in the static constructor
.field private static final BITMAP_THUMB_SIZE_SCALE:D = 0.0

.field private static final BITMAP_THUMB_SIZE_WIDTH:I = 0xc8

.field private static final DEFAULT_LOCATION_SEARCH_TYPE:I = 0x1

.field public static final DEFAULT_PLACE_NAME:Ljava/lang/String; = "Address"

.field private static final DIALOG_LOC_SETTINGS:I = 0x0

.field private static final DIALOG_LOC_WIFI:I = 0x1

.field public static final EXTRA_CONTACT_NAME:Ljava/lang/String; = "extra_contact_name"

.field public static final EXTRA_IMAGE_PATH:Ljava/lang/String; = "extra_image_path"

.field public static final EXTRA_MAP_URL:Ljava/lang/String; = "extra_map_url"

.field public static final EXTRA_PLACE_ADDRESS:Ljava/lang/String; = "extra_place_address"

.field public static final EXTRA_PLACE_BYTES:Ljava/lang/String; = "extra_selected_place"

.field public static final EXTRA_STARTUP_FLAG:Ljava/lang/String; = "extra_startup_flag"

.field private static final FOCUS_MODE_ADD_LOCATION:I = 0x1

.field private static final FOCUS_MODE_FULL_SCREEN_SEARCH:I = 0x4

.field private static final FOCUS_MODE_FULL_SCREEN_SEARCH_RESULTS:I = 0x5

.field private static final FOCUS_MODE_HALF_SCREEN_SEARCH:I = 0x0

.field private static final FOCUS_MODE_HALF_SCREEN_SEARCH_RESULTS:I = 0x2

.field private static final FOCUS_MODE_LOCATION_LIST:I = 0x3

.field private static final FOCUS_MODE_MAP_ONLY:I = 0x7

.field private static final FOCUS_MODE_VIEW_ONLY:I = 0x6

.field private static final LOCATION_SEARCH_TYPE:Ljava/lang/String; = "search_type"

.field private static final LOCATION_SEARCH_TYPE_ADDRESS:I = 0x0

.field private static final LOCATION_SEARCH_TYPE_BING:I = 0x1

.field private static final MAP_IMAGE_FILENAME:Ljava/lang/String; = "location.map"

.field public static final PIN_NAME_MEDIA:Ljava/lang/String; = "Address"

.field private static final PREF_FIRST_TRACKING:Ljava/lang/String; = "first_tracking"

.field private static final PREF_FOLLOW_ME:Ljava/lang/String; = "follow_me"

.field private static final PREF_INIT_FIRST_LOCATION:Ljava/lang/String; = "init_first_location"

.field private static final PREF_KEY_DO_NOT_ASK_AGAIN:Ljava/lang/String; = "pref_loc_do_not_ask_again"

.field private static final PREF_LATITUDE:Ljava/lang/String; = "latitude"

.field private static final PREF_LONGITUDE:Ljava/lang/String; = "longitude"

.field private static final PREF_ZOOM:Ljava/lang/String; = "zoom"

.field public static final REQUEST_CODE_ATTACH_FAV_LOCATION:I = 0x34

.field public static final REQUEST_CODE_ATTACH_GEO_MEDIA:I = 0x32

.field public static final REQUEST_CODE_ATTACH_PICK_CONTACT:I = 0x33

.field public static final REQUEST_CODE_ATTACH_RECENT_LOCATION:I = 0x35

.field public static final STARTUP_MODE_MEDIA:I = 0x5

.field public static final STARTUP_MODE_MY_LOCATION:I = 0x1

.field public static final STARTUP_MODE_NORMAL:I = 0x0

.field public static final STARTUP_MODE_SEARCH_ADDRESS:I = 0x3

.field public static final STARTUP_MODE_SEARCH_POI:I = 0x2

.field public static final STARTUP_MODE_SHOW_ADDRESS:I = 0x6

.field public static final STARTUP_MODE_VIEW_ONLY:I = 0x4

.field private static final TAG:Ljava/lang/String; = "LocationMapActivity"

.field private static final ZOOM_DEFAULT_LEVEL:I = 0xf

.field private static final ZOOM_INITIAL_LEVEL:I = 0x1

.field private static final centerLat:D = 35.46066

.field private static final centerLong:D = -96.85547


# instance fields
.field private accuracyString:Ljava/lang/String;

.field private final addLocationClickListener:Landroid/view/View$OnClickListener;

.field private bInitFirstLocation:Z

.field private btnFavorite:Landroid/widget/Button;

.field private btnGo:Landroid/widget/Button;

.field private btnOk:Landroid/widget/Button;

.field private btnRecent:Landroid/widget/Button;

.field private btnVZNavigate:Landroid/widget/Button;

.field private currentFocusMode:I

.field private favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

.field private final favoritesClickListener:Landroid/view/View$OnClickListener;

.field private firstTracking:Z

.field private followMe:Z

.field private isStartupSearch:Z

.field private lastLatitude:D

.field private lastLongitude:D

.field private locationListener:Lcom/nbi/location/LocationListener;

.field private locationMenuList:Landroid/widget/ListView;

.field private mAutoWifiDialogHasDismissed:Z

.field private mContext:Landroid/content/Context;

.field private mFavoriteLocation:Landroid/view/MenuItem;

.field private mHasLocSettingShown:Z

.field private mMyLocation:Landroid/view/MenuItem;

.field private mNoNetworkDialog:Landroid/app/AlertDialog;

.field private mRecentLocation:Landroid/view/MenuItem;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchSelected:Lcom/samsung/mms/location/LocationMapActivity$searchOption;

.field private mSearchView:Landroid/widget/SearchView;

.field private final mapChangeListener:Lcom/nbi/map/android/MapView$OnMapCenterAndZoomChangeListener;

.field private mapConfiguration:Lcom/nbi/map/android/MapConfiguration;

.field private final mapPinEventListener:Lcom/nbi/map/android/MapView$OnPinEventListener;

.field private mapView:Lcom/nbi/map/android/MapView;

.field private final mapViewRedrawHandler:Landroid/os/Handler;

.field private final mapViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mbHasInitialized:Z

.field private mediaBitmap:Landroid/graphics/Bitmap;

.field private mediaLatitude:D

.field private mediaLongitude:D

.field private mediaLookup:Lcom/nbi/map/geocode/ReverseGeocodeRequest;

.field private navigationBar:Landroid/widget/RelativeLayout;

.field private navigationHandler:Lcom/samsung/mms/location/NavigationHandler;

.field private nbiContext:Lcom/nbi/common/NBIContext;

.field private pinBubble:Lcom/samsung/mms/location/PinBubbleView;

.field private progressBar:Landroid/view/View;

.field private recPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

.field private final recentClickListener:Landroid/view/View$OnClickListener;

.field private reverseLookUpPinId:I

.field private final searchCheckListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private final searchClickListener:Landroid/view/View$OnClickListener;

.field private final searchEditorBackActionListener:Lcom/samsung/mms/location/OnSearchEditorBackAction;

.field private searchField:Lcom/samsung/mms/location/SearchEditText;

.field private final searchFieldTextWatcher:Landroid/text/TextWatcher;

.field private final searchFieldTouchListener:Landroid/view/View$OnTouchListener;

.field private final searchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;

.field private searchPerformed:Z

.field private searchResultsList:Landroid/widget/ListView;

.field private searchTypeRadioGroup:Landroid/widget/RadioGroup;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private startupMode:I

.field private final vzNavigateListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/high16 v0, 0x4069

    .line 218
    invoke-static {v0, v1, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    sput-wide v0, Lcom/samsung/mms/location/LocationMapActivity;->BITMAP_THUMB_SIZE_SCALE:D

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const-wide/high16 v3, -0x4010

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 139
    iput-boolean v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchPerformed:Z

    .line 140
    iput-boolean v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->isStartupSearch:Z

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mNoNetworkDialog:Landroid/app/AlertDialog;

    .line 167
    sget-object v0, Lcom/samsung/mms/location/LocationMapActivity$searchOption;->None:Lcom/samsung/mms/location/LocationMapActivity$searchOption;

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSearchSelected:Lcom/samsung/mms/location/LocationMapActivity$searchOption;

    .line 201
    iput-wide v5, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLatitude:D

    .line 202
    iput-wide v5, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLongitude:D

    .line 205
    iput-boolean v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->firstTracking:Z

    .line 206
    iput-boolean v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->bInitFirstLocation:Z

    .line 207
    iput-boolean v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->followMe:Z

    .line 208
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->reverseLookUpPinId:I

    .line 210
    iput-wide v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLatitude:D

    .line 211
    iput-wide v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLongitude:D

    .line 212
    iput-boolean v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mAutoWifiDialogHasDismissed:Z

    .line 213
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->accuracyString:Ljava/lang/String;

    .line 249
    iput-boolean v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mHasLocSettingShown:Z

    .line 250
    iput-boolean v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mbHasInitialized:Z

    .line 263
    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/LocationMapActivity$1;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapViewRedrawHandler:Landroid/os/Handler;

    .line 1464
    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$6;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/LocationMapActivity$6;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchCheckListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 1558
    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$7;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/LocationMapActivity$7;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 1641
    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$8;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/LocationMapActivity$8;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapPinEventListener:Lcom/nbi/map/android/MapView$OnPinEventListener;

    .line 1798
    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$9;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/LocationMapActivity$9;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchFieldTouchListener:Landroid/view/View$OnTouchListener;

    .line 1834
    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$10;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/LocationMapActivity$10;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchClickListener:Landroid/view/View$OnClickListener;

    .line 1873
    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$11;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/LocationMapActivity$11;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchFieldTextWatcher:Landroid/text/TextWatcher;

    .line 1902
    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$12;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/LocationMapActivity$12;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchEditorBackActionListener:Lcom/samsung/mms/location/OnSearchEditorBackAction;

    .line 1950
    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$13;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/LocationMapActivity$13;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->addLocationClickListener:Landroid/view/View$OnClickListener;

    .line 2109
    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$14;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/LocationMapActivity$14;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->recentClickListener:Landroid/view/View$OnClickListener;

    .line 2139
    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$15;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/LocationMapActivity$15;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->favoritesClickListener:Landroid/view/View$OnClickListener;

    .line 2168
    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$16;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/LocationMapActivity$16;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->vzNavigateListener:Landroid/view/View$OnClickListener;

    .line 2313
    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$17;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/LocationMapActivity$17;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationListener:Lcom/nbi/location/LocationListener;

    .line 2434
    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$18;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/LocationMapActivity$18;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapChangeListener:Lcom/nbi/map/android/MapView$OnMapCenterAndZoomChangeListener;

    .line 2453
    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$19;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/LocationMapActivity$19;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/mms/location/LocationMapActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->followMe:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/mms/location/LocationMapActivity;Lcom/nbi/map/android/Pin;ZZ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/mms/location/LocationMapActivity;->addPinToMap(Lcom/nbi/map/android/Pin;ZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/mms/location/LocationMapActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/samsung/mms/location/LocationMapActivity;->followMe:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PinBubbleView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->pinBubble:Lcom/samsung/mms/location/PinBubbleView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PlaceDBAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->recPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/mms/location/LocationMapActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->currentFocusMode:I

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/mms/location/LocationMapActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->addLocationClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->vzNavigateListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/mms/location/LocationMapActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/samsung/mms/location/LocationMapActivity;->dropPin(II)V

    return-void
.end method

.method static synthetic access$172(Lcom/samsung/mms/location/LocationMapActivity;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->followMe:Z

    and-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->followMe:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/samsung/mms/location/LocationMapActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I

    return v0
.end method

.method static synthetic access$1900(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapViewRedrawHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/mms/location/LocationMapActivity;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLatitude:D

    return-wide v0
.end method

.method static synthetic access$2100(Lcom/samsung/mms/location/LocationMapActivity;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLongitude:D

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/samsung/mms/location/LocationMapActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->accuracyString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/samsung/mms/location/LocationMapActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity;->accuracyString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/SearchEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchTypeRadioGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/mms/location/LocationMapActivity;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLatitude:D

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/samsung/mms/location/LocationMapActivity;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLatitude:D

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/samsung/mms/location/LocationMapActivity;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLongitude:D

    return-wide v0
.end method

.method static synthetic access$2602(Lcom/samsung/mms/location/LocationMapActivity;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLongitude:D

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/samsung/mms/location/LocationMapActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/samsung/mms/location/LocationMapActivity;->isHideSoftKeyboard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/geocode/ReverseGeocodeRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLookup:Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->progressBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchResultsList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/mms/location/LocationMapActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/samsung/mms/location/LocationMapActivity;->createMapImage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationMenuList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnRecent:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnFavorite:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView$OnPinEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapPinEventListener:Lcom/nbi/map/android/MapView$OnPinEventListener;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/samsung/mms/location/LocationMapActivity;Lcom/nbi/map/data/Place;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/samsung/mms/location/LocationMapActivity;->shiftMapToLocation(Lcom/nbi/map/data/Place;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/samsung/mms/location/LocationMapActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->firstTracking:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/samsung/mms/location/LocationMapActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/samsung/mms/location/LocationMapActivity;->firstTracking:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/NavigationHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->navigationHandler:Lcom/samsung/mms/location/NavigationHandler;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/samsung/mms/location/LocationMapActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->bInitFirstLocation:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/samsung/mms/location/LocationMapActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/samsung/mms/location/LocationMapActivity;->bInitFirstLocation:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PlaceDBAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/location/LocationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationListener:Lcom/nbi/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/samsung/mms/location/LocationMapActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/samsung/mms/location/LocationMapActivity;->dropPinOnMapCenter(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/samsung/mms/location/LocationMapActivity;DDZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 128
    invoke-direct/range {p0 .. p5}, Lcom/samsung/mms/location/LocationMapActivity;->requestReverseLocation(DDZ)V

    return-void
.end method

.method static synthetic access$4302(Lcom/samsung/mms/location/LocationMapActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/samsung/mms/location/LocationMapActivity;->isStartupSearch:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mMyLocation:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mFavoriteLocation:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mRecentLocation:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/samsung/mms/location/LocationMapActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchPerformed:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/samsung/mms/location/LocationMapActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/samsung/mms/location/LocationMapActivity;->launchLocationSettings()V

    return-void
.end method

.method static synthetic access$4902(Lcom/samsung/mms/location/LocationMapActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mAutoWifiDialogHasDismissed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/SearchHandlerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/mms/location/LocationMapActivity;Lcom/samsung/mms/location/LocationMapActivity$searchOption;)Lcom/samsung/mms/location/LocationMapActivity$searchOption;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSearchSelected:Lcom/samsung/mms/location/LocationMapActivity$searchOption;

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private addPinToMap(Lcom/nbi/map/android/Pin;ZZ)I
    .locals 3
    .parameter "mapPin"
    .parameter "selected"
    .parameter "zoom"

    .prologue
    .line 2506
    const/4 v0, -0x1

    .line 2508
    .local v0, pinId:I
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    monitor-enter v2

    .line 2510
    :try_start_0
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v1}, Lcom/nbi/map/android/MapView;->getPinCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2511
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v1}, Lcom/nbi/map/android/MapView;->removeAllPins()V

    .line 2513
    :cond_0
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v1, p1, p2, p3}, Lcom/nbi/map/android/MapView;->addPin(Lcom/nbi/map/android/Pin;ZZ)I

    move-result v0

    .line 2514
    monitor-exit v2

    .line 2516
    return v0

    .line 2514
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private adjustViewsBasedOnFocus(I)V
    .locals 22
    .parameter "focusMode"

    .prologue
    .line 2605
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/mms/location/LocationMapActivity;->currentFocusMode:I

    .line 2607
    packed-switch p1, :pswitch_data_0

    .line 2721
    const-string v2, "LocationMapActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustViewsBasedOnFocus() - unsupported focus mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2725
    :cond_0
    :goto_0
    return-void

    .line 2613
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    .line 2614
    .local v20, config:Landroid/content/res/Configuration;
    move-object/from16 v0, v20

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/16 v19, 0x1

    .line 2615
    .local v19, bIsLandscape:Z
    :goto_1
    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/location/LocationMapActivity;->searchTypeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2616
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v18}, Lcom/samsung/mms/location/LocationMapActivity;->setAllViewsVisibility(ZZZZZZZZZZZZZZZZ)V

    goto :goto_0

    .line 2614
    .end local v19           #bIsLandscape:Z
    :cond_1
    const/16 v19, 0x0

    goto :goto_1

    .line 2623
    .restart local v19       #bIsLandscape:Z
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v18}, Lcom/samsung/mms/location/LocationMapActivity;->setAllViewsVisibility(ZZZZZZZZZZZZZZZZ)V

    goto :goto_0

    .line 2634
    .end local v19           #bIsLandscape:Z
    .end local v20           #config:Landroid/content/res/Configuration;
    :pswitch_1
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v18}, Lcom/samsung/mms/location/LocationMapActivity;->setAllViewsVisibility(ZZZZZZZZZZZZZZZZ)V

    .line 2639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;

    const v3, 0x7f0a03eb

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_0

    .line 2647
    :pswitch_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v18}, Lcom/samsung/mms/location/LocationMapActivity;->setAllViewsVisibility(ZZZZZZZZZZZZZZZZ)V

    goto/16 :goto_0

    .line 2656
    :pswitch_3
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v18}, Lcom/samsung/mms/location/LocationMapActivity;->setAllViewsVisibility(ZZZZZZZZZZZZZZZZ)V

    goto/16 :goto_0

    .line 2664
    :pswitch_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v18}, Lcom/samsung/mms/location/LocationMapActivity;->setAllViewsVisibility(ZZZZZZZZZZZZZZZZ)V

    .line 2669
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I

    if-ne v2, v3, :cond_3

    .line 2670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;

    const v3, 0x7f0a03ec

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(I)V

    goto/16 :goto_0

    .line 2672
    :cond_3
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I

    if-ne v2, v3, :cond_0

    .line 2673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;

    const v3, 0x7f0a03ed

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(I)V

    goto/16 :goto_0

    .line 2681
    :pswitch_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v18}, Lcom/samsung/mms/location/LocationMapActivity;->setAllViewsVisibility(ZZZZZZZZZZZZZZZZ)V

    goto/16 :goto_0

    .line 2691
    :pswitch_6
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v18}, Lcom/samsung/mms/location/LocationMapActivity;->setAllViewsVisibility(ZZZZZZZZZZZZZZZZ)V

    .line 2695
    const v2, 0x7f0a03f5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 2701
    const v2, 0x7f0e0114

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    .line 2702
    .local v21, searchBar:Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2709
    .end local v21           #searchBar:Landroid/widget/LinearLayout;
    :pswitch_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v18}, Lcom/samsung/mms/location/LocationMapActivity;->setAllViewsVisibility(ZZZZZZZZZZZZZZZZ)V

    .line 2714
    const v2, 0x7f0e0114

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    .line 2715
    .restart local v21       #searchBar:Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2607
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private createLocSettingDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 2997
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2998
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a040d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a040e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0411

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/mms/location/LocationMapActivity$22;

    invoke-direct {v3, p0}, Lcom/samsung/mms/location/LocationMapActivity$22;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0410

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/mms/location/LocationMapActivity$21;

    invoke-direct {v3, p0}, Lcom/samsung/mms/location/LocationMapActivity$21;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/mms/location/LocationMapActivity$20;

    invoke-direct {v2, p0}, Lcom/samsung/mms/location/LocationMapActivity$20;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 3015
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createLocWifiEnableDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    .line 3077
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f03002d

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 3078
    .local v2, contents:Landroid/view/View;
    const v4, 0x7f0e00e9

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 3079
    .local v1, checkbox:Landroid/widget/CheckBox;
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_0

    .line 3081
    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "pref_loc_do_not_ask_again"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 3082
    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3083
    .local v3, pref:Landroid/content/SharedPreferences;
    new-instance v4, Lcom/samsung/mms/location/LocationMapActivity$23;

    invoke-direct {v4, p0, v3}, Lcom/samsung/mms/location/LocationMapActivity$23;-><init>(Lcom/samsung/mms/location/LocationMapActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3098
    .end local v3           #pref:Landroid/content/SharedPreferences;
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3099
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0a0409

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a040a

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/samsung/mms/location/LocationMapActivity$26;

    invoke-direct {v6, p0}, Lcom/samsung/mms/location/LocationMapActivity$26;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a040b

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/samsung/mms/location/LocationMapActivity$25;

    invoke-direct {v6, p0}, Lcom/samsung/mms/location/LocationMapActivity$25;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/mms/location/LocationMapActivity$24;

    invoke-direct {v5, p0}, Lcom/samsung/mms/location/LocationMapActivity$24;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 3121
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method private createMapImage()Ljava/lang/String;
    .locals 10

    .prologue
    .line 2809
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2810
    .local v0, appContext:Landroid/content/Context;
    const/4 v2, 0x0

    .line 2812
    .local v2, image:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/mms/location/LocationMapActivity;->createScaledMapImage()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2814
    const-string v7, "location.map"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 2815
    .local v3, imageFile:Ljava/io/FileOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v2, v7, v8, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v6

    .line 2816
    .local v6, result:Z
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 2818
    if-eqz v6, :cond_1

    .line 2820
    const-string v7, "location.map"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 2839
    if-eqz v2, :cond_0

    .line 2840
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2841
    const/4 v2, 0x0

    .line 2846
    .end local v3           #imageFile:Ljava/io/FileOutputStream;
    .end local v6           #result:Z
    :cond_0
    :goto_0
    return-object v7

    .line 2824
    .restart local v3       #imageFile:Ljava/io/FileOutputStream;
    .restart local v6       #result:Z
    :cond_1
    :try_start_1
    const-string v7, "LocationMapActivity"

    const-string v8, "createMapImage() - could not compress map image to JPEG."

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2839
    if-eqz v2, :cond_2

    .line 2840
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2841
    .end local v3           #imageFile:Ljava/io/FileOutputStream;
    .end local v6           #result:Z
    :goto_1
    const/4 v2, 0x0

    .line 2846
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 2827
    :catch_0
    move-exception v4

    .line 2828
    .local v4, oomException:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v7, "LocationMapActivity"

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2831
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 2832
    .local v5, pid:I
    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2839
    if-eqz v2, :cond_2

    .line 2840
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 2834
    .end local v4           #oomException:Ljava/lang/OutOfMemoryError;
    .end local v5           #pid:I
    :catch_1
    move-exception v1

    .line 2836
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    const-string v7, "LocationMapActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createMapImage() - error writing out the map image file. Details: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2839
    if-eqz v2, :cond_2

    .line 2840
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 2839
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    if-eqz v2, :cond_3

    .line 2840
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2841
    const/4 v2, 0x0

    .line 2839
    :cond_3
    throw v7
.end method

.method private createScaledMapImage()Landroid/graphics/Bitmap;
    .locals 21

    .prologue
    .line 2850
    const/16 v19, 0x0

    .line 2851
    .local v19, scaledMapImage:Landroid/graphics/Bitmap;
    const/16 v18, 0x1

    .line 2852
    .local v18, scale:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 2853
    .local v4, mapWidth:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v17

    .line 2857
    .local v17, mapHeight:I
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v1

    mul-int v1, v1, v18

    if-gt v4, v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v1

    mul-int v1, v1, v18

    move/from16 v0, v17

    if-le v0, v1, :cond_1

    .line 2860
    :cond_0
    mul-int/lit8 v18, v18, 0x2

    goto :goto_0

    .line 2863
    :cond_1
    div-int v1, v4, v18

    div-int v2, v17, v18

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 2870
    const/16 v20, 0x32

    .line 2871
    .local v20, spanHeight:I
    const/16 v1, 0x32

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2872
    .local v6, mapSpan:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 2874
    .local v3, offsetY:I
    :goto_1
    add-int/lit8 v1, v3, 0x32

    move/from16 v0, v17

    if-ge v1, v0, :cond_3

    .line 2876
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    const/4 v2, 0x0

    const/16 v5, 0x32

    invoke-virtual/range {v1 .. v6}, Lcom/nbi/map/android/MapView;->getImage(IIIILandroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2878
    div-int v1, v4, v18

    const/16 v2, 0x32

    div-int v2, v2, v18

    const/4 v9, 0x1

    invoke-static {v6, v1, v2, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2881
    .local v7, scaledSpan:Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v8, v1, [I

    .line 2882
    .local v8, spanPixels:[I
    const/4 v9, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 2887
    const/4 v11, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    const/4 v13, 0x0

    div-int v14, v3, v18

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move-object/from16 v9, v19

    move-object v10, v8

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 2892
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 2896
    .end local v7           #scaledSpan:Landroid/graphics/Bitmap;
    .end local v8           #spanPixels:[I
    :cond_2
    add-int/lit8 v3, v3, 0x32

    goto :goto_1

    .line 2903
    :cond_3
    sub-int v5, v17, v3

    .line 2904
    .local v5, leftOverSpanHeight:I
    if-lez v5, :cond_4

    .line 2905
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/nbi/map/android/MapView;->getImage(IIIILandroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2907
    div-int v1, v4, v18

    div-int v2, v5, v18

    const/4 v9, 0x1

    invoke-static {v6, v1, v2, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2910
    .restart local v7       #scaledSpan:Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v8, v1, [I

    .line 2911
    .restart local v8       #spanPixels:[I
    const/4 v9, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 2916
    const/4 v11, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    const/4 v13, 0x0

    div-int v14, v3, v18

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move-object/from16 v9, v19

    move-object v10, v8

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 2921
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 2926
    .end local v7           #scaledSpan:Landroid/graphics/Bitmap;
    .end local v8           #spanPixels:[I
    :cond_4
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 2927
    const/4 v6, 0x0

    .line 2929
    return-object v19
.end method

.method private displayLoadErrorDialog(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 1220
    new-instance v0, Lcom/samsung/mms/location/LocationMapActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/samsung/mms/location/LocationMapActivity$5;-><init>(Lcom/samsung/mms/location/LocationMapActivity;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1241
    return-void
.end method

.method private drawBestLocationIfAvailable()V
    .locals 3

    .prologue
    .line 3183
    :try_start_0
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/mms/location/LBSManager;->getInstance(Landroid/content/Context;)Lcom/samsung/mms/location/LBSManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/mms/location/LBSManager;->getCurrentBestLocation()Lcom/nbi/location/Location;

    move-result-object v1

    .line 3184
    .local v1, location:Lcom/nbi/location/Location;
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationListener:Lcom/nbi/location/LocationListener;

    invoke-interface {v2, v1}, Lcom/nbi/location/LocationListener;->locationUpdated(Lcom/nbi/location/Location;)V
    :try_end_0
    .catch Lcom/nbi/location/LocationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3189
    .end local v1           #location:Lcom/nbi/location/Location;
    :goto_0
    return-void

    .line 3186
    :catch_0
    move-exception v0

    .line 3187
    .local v0, e:Lcom/nbi/location/LocationException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private dropPin(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2545
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/mms/location/LocationMapActivity;->dropPin(III)V

    .line 2546
    return-void
.end method

.method private dropPin(III)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "accuracy"

    .prologue
    .line 2557
    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    const-string v1, ""

    :goto_0
    iput-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->accuracyString:Ljava/lang/String;

    .line 2559
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v1}, Lcom/nbi/map/android/MapView;->removeAllPins()V

    .line 2561
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    new-instance v2, Lcom/nbi/map/data/Point;

    invoke-direct {v2, p1, p2}, Lcom/nbi/map/data/Point;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/nbi/map/android/MapView;->convertMapXYToCoordinates(Lcom/nbi/map/data/Point;)Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    .line 2563
    .local v0, mapCoords:Lcom/nbi/map/data/Coordinates;
    invoke-virtual {v0}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/mms/location/LocationMapActivity;->requestReverseLocation(DD)V

    .line 2564
    return-void

    .line 2557
    .end local v0           #mapCoords:Lcom/nbi/map/data/Coordinates;
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a03f8

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private dropPinOnMapCenter()V
    .locals 3

    .prologue
    .line 2524
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/mms/location/LocationMapActivity;->dropPin(III)V

    .line 2525
    return-void
.end method

.method private dropPinOnMapCenter(I)V
    .locals 2
    .parameter "accuracy"

    .prologue
    .line 2534
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/mms/location/LocationMapActivity;->dropPin(III)V

    .line 2535
    return-void
.end method

.method private static floatComp(FF)Z
    .locals 3
    .parameter "float1"
    .parameter "float2"

    .prologue
    .line 736
    const v0, 0x38d1b717

    .line 737
    .local v0, valDiff:F
    sub-float v1, p0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getMediaContentPath(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 10
    .parameter "mediaUri"

    .prologue
    const/4 v3, 0x0

    .line 1401
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/samsung/mms/location/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1404
    .local v8, mediaCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1408
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1410
    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1412
    .local v7, dataIndex:I
    const/4 v0, -0x1

    if-eq v0, v7, :cond_2

    .line 1413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1422
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1423
    const/4 v8, 0x0

    .line 1431
    .end local v7           #dataIndex:I
    :cond_0
    :goto_0
    return-object v3

    .line 1416
    :catch_0
    move-exception v9

    .line 1418
    .local v9, sqlException:Landroid/database/SQLException;
    :try_start_1
    const-string v0, "LocationMapActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMediaContentPath(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1422
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1423
    .end local v9           #sqlException:Landroid/database/SQLException;
    :goto_1
    const/4 v8, 0x0

    .line 1426
    :cond_1
    if-eqz v8, :cond_0

    .line 1427
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1428
    const/4 v8, 0x0

    goto :goto_0

    .line 1422
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1423
    const/4 v8, 0x0

    .line 1422
    throw v0

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private getUriBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "mediaUri"

    .prologue
    const/4 v13, 0x1

    const/4 v10, -0x1

    const/4 v8, 0x0

    .line 1324
    const/4 v6, 0x0

    .line 1326
    .local v6, thumbnail:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 1328
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 1329
    .local v7, uriScheme:Ljava/lang/String;
    const-string v9, "file"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1332
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1333
    .local v2, imageFilePath:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1335
    :try_start_0
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1336
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1337
    invoke-static {v2, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1339
    iget-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v9, :cond_1

    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v9, v10, :cond_1

    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v9, v10, :cond_1

    .line 1341
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v8, v8

    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    .line 1342
    .local v3, newImageScale:D
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v8, v8

    cmpl-double v8, v3, v8

    if-lez v8, :cond_2

    .line 1343
    sget-wide v8, Lcom/samsung/mms/location/LocationMapActivity;->BITMAP_THUMB_SIZE_SCALE:D

    div-double/2addr v3, v8

    .line 1348
    :goto_0
    const/4 v8, 0x0

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1349
    double-to-int v8, v3

    iput v8, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1350
    invoke-static {v2, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1351
    invoke-direct {p0, v6}, Lcom/samsung/mms/location/LocationMapActivity;->scaleBitmapForBubble(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1386
    .end local v2           #imageFilePath:Ljava/lang/String;
    .end local v3           #newImageScale:D
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v7           #uriScheme:Ljava/lang/String;
    :cond_0
    :goto_1
    if-nez v6, :cond_5

    .line 1387
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020011

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1390
    :cond_1
    :goto_2
    return-object v8

    .line 1346
    .restart local v2       #imageFilePath:Ljava/lang/String;
    .restart local v3       #newImageScale:D
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v7       #uriScheme:Ljava/lang/String;
    :cond_2
    const-wide/high16 v3, 0x4030

    goto :goto_0

    .line 1357
    .end local v3           #newImageScale:D
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 1358
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v8, "LocationMapActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Out Of Memory Error while doing Bitmap decode on file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    const/4 v6, 0x0

    goto :goto_1

    .line 1362
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    .end local v2           #imageFilePath:Ljava/lang/String;
    :cond_3
    const-string v9, "content"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1364
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-long v10, v10

    const/4 v12, 0x3

    invoke-static {v9, v10, v11, v12, v8}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1371
    if-nez v6, :cond_4

    .line 1372
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-long v10, v10

    invoke-static {v9, v10, v11, v13, v8}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1378
    :cond_4
    if-nez v6, :cond_0

    .line 1380
    invoke-direct {p0, p1}, Lcom/samsung/mms/location/LocationMapActivity;->getMediaContentPath(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 1381
    .local v1, fileUri:Landroid/net/Uri;
    invoke-direct {p0, v1}, Lcom/samsung/mms/location/LocationMapActivity;->getUriBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_1

    .end local v1           #fileUri:Landroid/net/Uri;
    .end local v7           #uriScheme:Ljava/lang/String;
    :cond_5
    move-object v8, v6

    .line 1390
    goto :goto_2
.end method

.method private initializeViewItems()V
    .locals 3

    .prologue
    .line 893
    const v0, 0x7f0e011f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nbi/map/android/MapView;

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    .line 895
    const v0, 0x7f0e011a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchTypeRadioGroup:Landroid/widget/RadioGroup;

    .line 896
    const v0, 0x7f0e0123

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->navigationBar:Landroid/widget/RelativeLayout;

    .line 897
    const v0, 0x7f0e0120

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchResultsList:Landroid/widget/ListView;

    .line 898
    const v0, 0x7f0e011d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationMenuList:Landroid/widget/ListView;

    .line 899
    const v0, 0x7f0e0116

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/location/SearchEditText;

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;

    .line 900
    const v0, 0x7f0e0118

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnRecent:Landroid/widget/Button;

    .line 901
    const v0, 0x7f0e0119

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnFavorite:Landroid/widget/Button;

    .line 902
    const v0, 0x7f0e0117

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnGo:Landroid/widget/Button;

    .line 903
    const v0, 0x7f0e0127

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnOk:Landroid/widget/Button;

    .line 904
    const v0, 0x7f0e0128

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnVZNavigate:Landroid/widget/Button;

    .line 905
    const v0, 0x7f0e0121

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->progressBar:Landroid/view/View;

    .line 909
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnGo:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 912
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnOk:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->addLocationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 915
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchFieldTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 916
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchFieldTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 917
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchEditorBackActionListener:Lcom/samsung/mms/location/OnSearchEditorBackAction;

    invoke-virtual {v0, v1}, Lcom/samsung/mms/location/SearchEditText;->setOnSearchEditorBackAction(Lcom/samsung/mms/location/OnSearchEditorBackAction;)V

    .line 920
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnRecent:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->recentClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 923
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnFavorite:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->favoritesClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 926
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnVZNavigate:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->vzNavigateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 929
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchTypeRadioGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchCheckListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 932
    new-instance v0, Lcom/samsung/mms/location/PinBubbleView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/mms/location/PinBubbleView;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->pinBubble:Lcom/samsung/mms/location/PinBubbleView;

    .line 933
    return-void
.end method

.method private isHideSoftKeyboard()Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1933
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 1934
    .local v2, config:Landroid/content/res/Configuration;
    iget v6, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v7, :cond_0

    move v1, v4

    .line 1935
    .local v1, bIsLandscape:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1936
    iget v6, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v6, v7, :cond_1

    move v0, v4

    .line 1937
    .local v0, bIsHardKeyboardHidden:Z
    :goto_1
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 1938
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_2

    iget-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;

    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v6

    if-ne v6, v4, :cond_2

    if-eqz v0, :cond_2

    .line 1942
    .end local v0           #bIsHardKeyboardHidden:Z
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_2
    return v4

    .end local v1           #bIsLandscape:Z
    :cond_0
    move v1, v5

    .line 1934
    goto :goto_0

    .restart local v1       #bIsLandscape:Z
    :cond_1
    move v0, v5

    .line 1936
    goto :goto_1

    :cond_2
    move v4, v5

    .line 1942
    goto :goto_2
.end method

.method private launchLocationSettings()V
    .locals 2

    .prologue
    .line 2936
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2937
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2938
    return-void
.end method

.method private readIntentMapData()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-wide/high16 v6, -0x4010

    .line 1249
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1251
    .local v0, controlIntent:Landroid/content/Intent;
    iput-wide v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLatitude:D

    .line 1252
    iput-wide v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLongitude:D

    .line 1253
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaBitmap:Landroid/graphics/Bitmap;

    .line 1255
    if-eqz v0, :cond_2

    .line 1258
    const-string v6, "extra_map_url"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1259
    .local v3, mapURL:Ljava/lang/String;
    const-string v6, "extra_selected_place"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    .line 1260
    .local v5, placeBytes:[B
    if-nez v5, :cond_0

    if-eqz v3, :cond_2

    .line 1262
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1264
    iget-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->pinBubble:Lcom/samsung/mms/location/PinBubbleView;

    invoke-virtual {v6, v10}, Lcom/samsung/mms/location/PinBubbleView;->setIsLoading(Z)V

    .line 1266
    iget-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v6, v3}, Lcom/nbi/map/android/MapView;->mapFromURL(Ljava/lang/String;)V

    .line 1270
    :cond_1
    if-eqz v5, :cond_4

    .line 1272
    const-string v6, "LocationMapActivity"

    const-string v7, "PlaceBytes is not NULL"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    invoke-static {v5}, Lcom/samsung/mms/location/Place;->createPlace([B)Lcom/samsung/mms/location/Place;

    move-result-object v4

    .line 1276
    .local v4, place:Lcom/samsung/mms/location/Place;
    const/4 v2, 0x0

    .line 1277
    .local v2, mapPlace:Lcom/nbi/map/data/Place;
    if-nez v4, :cond_3

    .line 1315
    .end local v2           #mapPlace:Lcom/nbi/map/data/Place;
    .end local v3           #mapURL:Ljava/lang/String;
    .end local v4           #place:Lcom/samsung/mms/location/Place;
    .end local v5           #placeBytes:[B
    :cond_2
    :goto_0
    return-void

    .line 1280
    .restart local v2       #mapPlace:Lcom/nbi/map/data/Place;
    .restart local v3       #mapURL:Ljava/lang/String;
    .restart local v4       #place:Lcom/samsung/mms/location/Place;
    .restart local v5       #placeBytes:[B
    :cond_3
    invoke-static {v4}, Lcom/samsung/mms/location/PlaceUtils;->createNBIPlaceFromSDK(Lcom/samsung/mms/location/Place;)Lcom/nbi/map/data/Place;

    move-result-object v2

    .line 1286
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1288
    invoke-direct {p0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->shiftMapToLocation(Lcom/nbi/map/data/Place;)V

    .line 1296
    :goto_1
    iget v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_6

    .line 1298
    iget-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v6}, Lcom/nbi/map/android/MapView;->deselectAllPins()V

    .line 1299
    invoke-virtual {v2}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v1

    .line 1301
    .local v1, location:Lcom/nbi/map/data/MapLocation;
    invoke-virtual {v1}, Lcom/nbi/map/data/MapLocation;->getLatitude()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLatitude:D

    .line 1302
    invoke-virtual {v1}, Lcom/nbi/map/data/MapLocation;->getLongitude()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLongitude:D

    .line 1303
    const-string v6, "extra_image_path"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/mms/location/LocationMapActivity;->getUriBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaBitmap:Landroid/graphics/Bitmap;

    .line 1304
    iget-wide v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLatitude:D

    iget-wide v8, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLongitude:D

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/samsung/mms/location/LocationMapActivity;->requestReverseLocation(DD)V

    .line 1312
    .end local v1           #location:Lcom/nbi/map/data/MapLocation;
    .end local v2           #mapPlace:Lcom/nbi/map/data/Place;
    .end local v4           #place:Lcom/samsung/mms/location/Place;
    :cond_4
    :goto_2
    iput-boolean v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->followMe:Z

    goto :goto_0

    .line 1292
    .restart local v2       #mapPlace:Lcom/nbi/map/data/Place;
    .restart local v4       #place:Lcom/samsung/mms/location/Place;
    :cond_5
    iget-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v6}, Lcom/nbi/map/android/MapView;->getSelectedPin()I

    move-result v6

    iput v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->reverseLookUpPinId:I

    goto :goto_1

    .line 1306
    :cond_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1308
    invoke-direct {p0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->shiftMapToLocation(Lcom/nbi/map/data/Place;)V

    goto :goto_2
.end method

.method private requestReverseLocation(DD)V
    .locals 6
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 3133
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/mms/location/LocationMapActivity;->requestReverseLocation(DDZ)V

    .line 3134
    return-void
.end method

.method private requestReverseLocation(DDZ)V
    .locals 17
    .parameter "latitude"
    .parameter "longitude"
    .parameter "resetPinBubble"

    .prologue
    .line 3147
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLookup:Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    if-eqz v4, :cond_0

    .line 3148
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLookup:Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    invoke-virtual {v4}, Lcom/nbi/map/geocode/ReverseGeocodeRequest;->cancelRequest()V

    .line 3149
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLookup:Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    .line 3153
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/mms/location/LocationMapActivity;->pinBubble:Lcom/samsung/mms/location/PinBubbleView;

    if-eqz v4, :cond_1

    if-eqz p5, :cond_1

    .line 3154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/mms/location/LocationMapActivity;->pinBubble:Lcom/samsung/mms/location/PinBubbleView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/samsung/mms/location/PinBubbleView;->setIsLoading(Z)V

    .line 3159
    :cond_1
    new-instance v13, Lcom/nbi/map/data/MapLocation;

    invoke-direct {v13}, Lcom/nbi/map/data/MapLocation;-><init>()V

    .line 3160
    .local v13, newLocation:Lcom/nbi/map/data/MapLocation;
    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/nbi/map/data/MapLocation;->setLatLon(DD)V

    .line 3162
    new-instance v15, Lcom/nbi/map/data/Place;

    invoke-direct {v15}, Lcom/nbi/map/data/Place;-><init>()V

    .line 3163
    .local v15, newPlace:Lcom/nbi/map/data/Place;
    invoke-virtual {v15, v13}, Lcom/nbi/map/data/Place;->setLocation(Lcom/nbi/map/data/MapLocation;)V

    .line 3165
    new-instance v14, Lcom/nbi/map/android/Pin;

    const/4 v4, 0x4

    const-string v5, ""

    invoke-direct {v14, v4, v15, v5}, Lcom/nbi/map/android/Pin;-><init>(ILcom/nbi/map/data/Place;Ljava/lang/String;)V

    .line 3166
    .local v14, newPin:Lcom/nbi/map/android/Pin;
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4, v5}, Lcom/samsung/mms/location/LocationMapActivity;->addPinToMap(Lcom/nbi/map/android/Pin;ZZ)I

    .line 3170
    new-instance v16, Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/mms/location/LocationMapActivity;->nbiContext:Lcom/nbi/common/NBIContext;

    const/4 v11, 0x0

    new-instance v4, Lcom/samsung/mms/location/LocationMapActivity$ReverseGeocodeHandler;

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/samsung/mms/location/LocationMapActivity$ReverseGeocodeHandler;-><init>(Lcom/samsung/mms/location/LocationMapActivity;DD)V

    move-object/from16 v5, v16

    move-object v6, v10

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-object v12, v4

    invoke-direct/range {v5 .. v12}, Lcom/nbi/map/geocode/ReverseGeocodeRequest;-><init>(Lcom/nbi/common/NBIContext;DDZLcom/nbi/map/geocode/ReverseGeocodeListener;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/mms/location/LocationMapActivity;->mediaLookup:Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    .line 3174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLookup:Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    invoke-virtual {v4}, Lcom/nbi/map/geocode/ReverseGeocodeRequest;->startRequest()V

    .line 3175
    return-void
.end method

.method private scaleBitmapForBubble(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "srcBitmap"

    .prologue
    const/4 v6, 0x1

    .line 1441
    const/16 v0, 0xc8

    .line 1442
    .local v0, maxSizeX:I
    const/16 v1, 0xc8

    .line 1443
    .local v1, maxSizeY:I
    const/4 v2, 0x1

    .line 1445
    .local v2, scale:I
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit16 v5, v2, 0xc8

    if-gt v4, v5, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/lit16 v5, v2, 0xc8

    if-le v4, v5, :cond_1

    .line 1446
    :cond_0
    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1449
    :cond_1
    if-eq v2, v6, :cond_2

    .line 1450
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/2addr v4, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/2addr v5, v2

    invoke-static {p1, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1456
    .local v3, scaledBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1461
    .end local v3           #scaledBitmap:Landroid/graphics/Bitmap;
    :goto_1
    return-object v3

    :cond_2
    move-object v3, p1

    goto :goto_1
.end method

.method private searchLocation(Ljava/lang/String;)V
    .locals 10
    .parameter "searchString"

    .prologue
    .line 707
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 708
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/mms/location/LocationUtils;->haveInternet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 710
    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->showNoInternetDialog()V

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    iget v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->currentFocusMode:I

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2

    iget v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->currentFocusMode:I

    const/4 v4, 0x5

    if-ne v1, v4, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 715
    .local v2, showResultsList:Z
    :goto_1
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSearchSelected:Lcom/samsung/mms/location/LocationMapActivity$searchOption;

    sget-object v4, Lcom/samsung/mms/location/LocationMapActivity$searchOption;->POI:Lcom/samsung/mms/location/LocationMapActivity$searchOption;

    if-ne v1, v4, :cond_4

    .line 718
    new-instance v0, Lcom/samsung/mms/location/POISearchHandler;

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchResultsList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    iget-object v5, p0, Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    iget-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/mms/location/POISearchHandler;-><init>(Landroid/app/Activity;ZLandroid/widget/ListView;Lcom/nbi/map/android/MapView;Lcom/samsung/mms/location/PlaceDBAdapter;Lcom/samsung/mms/location/SearchHandlerListener;)V

    .line 722
    .local v0, searchHandler:Lcom/samsung/mms/location/POISearchHandler;
    new-instance v1, Lcom/nbi/map/data/SearchRegion;

    iget-wide v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLatitude:D

    iget-wide v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLongitude:D

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/nbi/map/data/SearchRegion;-><init>(DD)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/mms/location/POISearchHandler;->performSearch(Ljava/lang/String;Lcom/nbi/map/data/SearchRegion;)V

    goto :goto_0

    .line 713
    .end local v0           #searchHandler:Lcom/samsung/mms/location/POISearchHandler;
    .end local v2           #showResultsList:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 724
    .restart local v2       #showResultsList:Z
    :cond_4
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSearchSelected:Lcom/samsung/mms/location/LocationMapActivity$searchOption;

    sget-object v4, Lcom/samsung/mms/location/LocationMapActivity$searchOption;->Address:Lcom/samsung/mms/location/LocationMapActivity$searchOption;

    if-ne v1, v4, :cond_0

    .line 726
    new-instance v3, Lcom/samsung/mms/location/GeocodeSearchHandler;

    iget-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchResultsList:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    iget-object v8, p0, Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    iget-object v9, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;

    move-object v4, p0

    move v5, v2

    invoke-direct/range {v3 .. v9}, Lcom/samsung/mms/location/GeocodeSearchHandler;-><init>(Landroid/app/Activity;ZLandroid/widget/ListView;Lcom/nbi/map/android/MapView;Lcom/samsung/mms/location/PlaceDBAdapter;Lcom/samsung/mms/location/SearchHandlerListener;)V

    .line 730
    .local v3, geoHandler:Lcom/samsung/mms/location/GeocodeSearchHandler;
    invoke-virtual {v3, p1}, Lcom/samsung/mms/location/GeocodeSearchHandler;->performSearch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAllViewsVisibility(ZZZZZZZZZZZZZZZZ)V
    .locals 4
    .parameter "showAddLocationBar"
    .parameter "showBtnRecent"
    .parameter "showBtnFavorite"
    .parameter "showBtnGo"
    .parameter "showBtnOk"
    .parameter "showBtnVZNav"
    .parameter "showSearchTypeRadioGroup"
    .parameter "showSearchResultsList"
    .parameter "showLocationMenuList"
    .parameter "deselectBtnRecent"
    .parameter "deselectBtnFavorite"
    .parameter "showMapView"
    .parameter "showNavigationBar"
    .parameter "focusSearchField"
    .parameter "selectSearchFieldText"
    .parameter "showKeyboard"

    .prologue
    .line 2742
    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnRecent:Landroid/widget/Button;

    if-eqz p2, :cond_7

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2743
    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnFavorite:Landroid/widget/Button;

    if-eqz p3, :cond_8

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2744
    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnGo:Landroid/widget/Button;

    if-eqz p4, :cond_9

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2747
    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnOk:Landroid/widget/Button;

    if-eqz p5, :cond_a

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2749
    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnVZNavigate:Landroid/widget/Button;

    if-eqz p6, :cond_b

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2750
    if-nez p6, :cond_2

    if-eqz p12, :cond_2

    .line 2752
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mMyLocation:Landroid/view/MenuItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mMyLocation:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2753
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mMyLocation:Landroid/view/MenuItem;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2755
    :cond_0
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mFavoriteLocation:Landroid/view/MenuItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mFavoriteLocation:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2756
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mFavoriteLocation:Landroid/view/MenuItem;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2758
    :cond_1
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mRecentLocation:Landroid/view/MenuItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mRecentLocation:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2759
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mRecentLocation:Landroid/view/MenuItem;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2763
    :cond_2
    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchTypeRadioGroup:Landroid/widget/RadioGroup;

    if-eqz p7, :cond_c

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2766
    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchResultsList:Landroid/widget/ListView;

    if-eqz p8, :cond_d

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2769
    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationMenuList:Landroid/widget/ListView;

    if-eqz p9, :cond_e

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2772
    if-eqz p10, :cond_3

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnRecent:Landroid/widget/Button;

    const v3, 0x7f02009a

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2773
    :cond_3
    if-eqz p11, :cond_4

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnFavorite:Landroid/widget/Button;

    const v3, 0x7f0200f1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2776
    :cond_4
    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    if-eqz p12, :cond_f

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2779
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->progressBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_10

    .line 2780
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->navigationBar:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2785
    :goto_9
    if-eqz p14, :cond_5

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 2788
    :cond_5
    if-eqz p15, :cond_6

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    .line 2790
    :cond_6
    if-eqz p16, :cond_12

    .line 2792
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 2793
    .local v1, m:Landroid/view/inputmethod/InputMethodManager;
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 2802
    .end local v1           #m:Landroid/view/inputmethod/InputMethodManager;
    :goto_a
    return-void

    .line 2742
    :cond_7
    const/16 v2, 0x8

    goto/16 :goto_0

    .line 2743
    :cond_8
    const/16 v2, 0x8

    goto/16 :goto_1

    .line 2744
    :cond_9
    const/16 v2, 0x8

    goto/16 :goto_2

    .line 2747
    :cond_a
    const/16 v2, 0x8

    goto/16 :goto_3

    .line 2749
    :cond_b
    const/16 v2, 0x8

    goto/16 :goto_4

    .line 2763
    :cond_c
    const/16 v2, 0x8

    goto :goto_5

    .line 2766
    :cond_d
    const/16 v2, 0x8

    goto :goto_6

    .line 2769
    :cond_e
    const/16 v2, 0x8

    goto :goto_7

    .line 2776
    :cond_f
    const/16 v2, 0x8

    goto :goto_8

    .line 2782
    :cond_10
    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->navigationBar:Landroid/widget/RelativeLayout;

    if-eqz p13, :cond_11

    const/4 v2, 0x0

    :goto_b
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_11
    const/16 v2, 0x8

    goto :goto_b

    .line 2797
    :cond_12
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2798
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2800
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_a
.end method

.method private shiftMapToLocation(Lcom/nbi/map/data/Place;)V
    .locals 7
    .parameter "place"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2575
    iput-boolean v5, p0, Lcom/samsung/mms/location/LocationMapActivity;->followMe:Z

    .line 2576
    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->pinBubble:Lcom/samsung/mms/location/PinBubbleView;

    invoke-virtual {v3, v5}, Lcom/samsung/mms/location/PinBubbleView;->setIsLoading(Z)V

    .line 2578
    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v3}, Lcom/nbi/map/android/MapView;->removeAllPins()V

    .line 2581
    new-instance v2, Lcom/samsung/mms/location/PlaceFormatter;

    invoke-direct {v2, p1}, Lcom/samsung/mms/location/PlaceFormatter;-><init>(Lcom/nbi/map/data/Place;)V

    .line 2582
    .local v2, placeFormatter:Lcom/samsung/mms/location/PlaceFormatter;
    invoke-virtual {v2, v5}, Lcom/samsung/mms/location/PlaceFormatter;->getFormattedPlaceArray(Z)[Ljava/lang/String;

    move-result-object v1

    .line 2584
    .local v1, placeDisplayTextArray:[Ljava/lang/String;
    const-string v3, "LocationMapActivity"

    aget-object v4, v1, v5

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2586
    new-instance v0, Lcom/nbi/map/android/Pin;

    const/4 v3, 0x4

    aget-object v4, v1, v6

    invoke-direct {v0, v3, p1, v4}, Lcom/nbi/map/android/Pin;-><init>(ILcom/nbi/map/data/Place;Ljava/lang/String;)V

    .line 2587
    .local v0, newPin:Lcom/nbi/map/android/Pin;
    aget-object v3, v1, v5

    invoke-virtual {v0, v3}, Lcom/nbi/map/android/Pin;->setTitle(Ljava/lang/String;)V

    .line 2588
    invoke-direct {p0, v0, v6, v6}, Lcom/samsung/mms/location/LocationMapActivity;->addPinToMap(Lcom/nbi/map/android/Pin;ZZ)I

    move-result v3

    iput v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->reverseLookUpPinId:I

    .line 2589
    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    iget v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->reverseLookUpPinId:I

    const/16 v5, 0xf

    invoke-virtual {v3, v4, v5}, Lcom/nbi/map/android/MapView;->zoomToPin(II)Z

    .line 2592
    invoke-direct {p0, v6}, Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V

    .line 2594
    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->recPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-virtual {v3, p1}, Lcom/samsung/mms/location/PlaceDBAdapter;->insertPlace(Lcom/nbi/map/data/Place;)J

    .line 2595
    return-void
.end method

.method private showLocSettingIfNecessary()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2949
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/mms/location/LocationUtils;->isAllLocationProviderEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2951
    iget-boolean v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mHasLocSettingShown:Z

    if-ne v0, v2, :cond_0

    .line 2954
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2975
    :goto_0
    return-void

    .line 2959
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mHasLocSettingShown:Z

    .line 2960
    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 2965
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mHasLocSettingShown:Z

    .line 2968
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2970
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showWifiEnabledDialogIfNeeded()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3048
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 3050
    .local v1, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3059
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_loc_do_not_ask_again"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3062
    .local v0, isDoNotAskAgainChecked:Z
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mAutoWifiDialogHasDismissed:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    .line 3063
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 3067
    .end local v0           #isDoNotAskAgainChecked:Z
    :cond_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 25
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 742
    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_1

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 753
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 754
    .local v9, appContext:Landroid/content/Context;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/samsung/mms/location/LocationUtils;->retrieveGeocoordinates(Landroid/net/Uri;Landroid/content/Context;)[F

    move-result-object v16

    .line 756
    .local v16, latAndLon:[F
    if-eqz v16, :cond_0

    .line 757
    const/4 v1, 0x0

    aget v1, v16, v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/mms/location/LocationMapActivity;->floatComp(FF)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget v1, v16, v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/mms/location/LocationMapActivity;->floatComp(FF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 759
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/samsung/mms/location/LocationMapActivity;->followMe:Z

    .line 760
    const/4 v1, 0x5

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I

    .line 762
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v1}, Lcom/nbi/map/android/MapView;->deselectAllPins()V

    .line 763
    const/4 v1, 0x0

    aget v1, v16, v1

    float-to-double v1, v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLatitude:D

    .line 764
    const/4 v1, 0x1

    aget v1, v16, v1

    float-to-double v1, v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLongitude:D

    .line 765
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/samsung/mms/location/LocationMapActivity;->getUriBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/mms/location/LocationMapActivity;->mediaBitmap:Landroid/graphics/Bitmap;

    .line 766
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLatitude:D

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLongitude:D

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/mms/location/LocationMapActivity;->requestReverseLocation(DD)V

    goto :goto_0

    .line 773
    .end local v9           #appContext:Landroid/content/Context;
    .end local v16           #latAndLon:[F
    :pswitch_1
    const-string v1, "extra_selected_place"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v20

    .line 774
    .local v20, placeBytes:[B
    if-eqz v20, :cond_0

    .line 775
    invoke-static/range {v20 .. v20}, Lcom/samsung/mms/location/Place;->createPlace([B)Lcom/samsung/mms/location/Place;

    move-result-object v17

    .line 776
    .local v17, mPlace:Lcom/samsung/mms/location/Place;
    if-eqz v17, :cond_0

    .line 777
    invoke-static/range {v17 .. v17}, Lcom/samsung/mms/location/PlaceUtils;->createNBIPlaceFromSDK(Lcom/samsung/mms/location/Place;)Lcom/nbi/map/data/Place;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/samsung/mms/location/LocationMapActivity;->shiftMapToLocation(Lcom/nbi/map/data/Place;)V

    goto :goto_0

    .line 785
    .end local v17           #mPlace:Lcom/samsung/mms/location/Place;
    .end local v20           #placeBytes:[B
    :pswitch_2
    const/16 v18, 0x0

    .line 786
    .local v18, name:Ljava/lang/String;
    const/16 v23, 0x0

    .line 787
    .local v23, street:Ljava/lang/String;
    const/4 v11, 0x0

    .line 788
    .local v11, city:Ljava/lang/String;
    const/16 v22, 0x0

    .line 789
    .local v22, state:Ljava/lang/String;
    const/4 v13, 0x0

    .line 790
    .local v13, country:Ljava/lang/String;
    const/16 v21, 0x0

    .line 791
    .local v21, postal:Ljava/lang/String;
    const/16 v24, -0x1

    .line 792
    .local v24, type:I
    const-string v1, "LocationMapActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selected Contact "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 794
    .local v8, addressArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 795
    .local v19, nameArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 796
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_9

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 798
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 799
    .local v12, contactId:Ljava/lang/String;
    const-string v1, "display_name"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 800
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 803
    .local v7, address:Landroid/database/Cursor;
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 807
    :cond_2
    const-string v15, ""

    .line 808
    .local v15, fullAddress:Ljava/lang/String;
    const-string v1, "data2"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 809
    const-string v1, "data4"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 810
    const-string v1, "data7"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 811
    const-string v1, "data8"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 812
    const-string v1, "data10"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 813
    const-string v1, "data9"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 815
    if-eqz v23, :cond_3

    .line 816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 817
    :cond_3
    if-eqz v11, :cond_4

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 819
    :cond_4
    if-eqz v22, :cond_5

    .line 820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 821
    :cond_5
    if-eqz v13, :cond_6

    .line 822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 823
    :cond_6
    if-eqz v21, :cond_7

    .line 824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 825
    :cond_7
    const-string v1, "ComposeMessageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Full Address"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    packed-switch v24, :pswitch_data_1

    .line 836
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (Other)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    :goto_1
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 842
    .end local v15           #fullAddress:Ljava/lang/String;
    :cond_8
    if-eqz v7, :cond_9

    .line 843
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 845
    .end local v7           #address:Landroid/database/Cursor;
    .end local v12           #contactId:Ljava/lang/String;
    :cond_9
    if-eqz v10, :cond_a

    .line 846
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 848
    :cond_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_b

    .line 851
    const v1, 0x7f0a041e

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 830
    .restart local v7       #address:Landroid/database/Cursor;
    .restart local v12       #contactId:Ljava/lang/String;
    .restart local v15       #fullAddress:Ljava/lang/String;
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (Home)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 833
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (Work)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 855
    .end local v7           #address:Landroid/database/Cursor;
    .end local v12           #contactId:Ljava/lang/String;
    .end local v15           #fullAddress:Ljava/lang/String;
    :cond_b
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 856
    .local v14, dlg:Landroid/app/AlertDialog$Builder;
    if-eqz v14, :cond_0

    .line 857
    const v1, 0x7f0a0427

    invoke-virtual {v14, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 858
    new-instance v1, Lcom/samsung/mms/location/LocationMapActivity$AddressAdapter;

    const v4, 0x7f03000b

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move-object/from16 v5, v19

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/samsung/mms/location/LocationMapActivity$AddressAdapter;-><init>(Lcom/samsung/mms/location/LocationMapActivity;Landroid/content/Context;ILjava/util/List;Ljava/util/List;)V

    new-instance v2, Lcom/samsung/mms/location/LocationMapActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v8}, Lcom/samsung/mms/location/LocationMapActivity$2;-><init>(Lcom/samsung/mms/location/LocationMapActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v14, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 874
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 746
    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 827
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 416
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 417
    iget-boolean v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mbHasInitialized:Z

    if-nez v0, :cond_0

    .line 423
    :goto_0
    return-void

    .line 419
    :cond_0
    const-string v0, "LocationMapActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Config change of:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapViewRedrawHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 323
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 324
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mContext:Landroid/content/Context;

    .line 328
    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/mms/location/LBSManager;->init(Landroid/content/Context;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mbHasInitialized:Z

    .line 329
    iget-boolean v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mbHasInitialized:Z

    if-nez v10, :cond_0

    .line 411
    :goto_0
    return-void

    .line 331
    :cond_0
    const v10, 0x7f030047

    invoke-virtual {p0, v10}, Landroid/app/Activity;->setContentView(I)V

    .line 332
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 333
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 334
    invoke-direct {p0}, Lcom/samsung/mms/location/LocationMapActivity;->initializeViewItems()V

    .line 337
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "extra_startup_flag"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I

    .line 340
    new-instance v10, Lcom/samsung/mms/location/FavoritesDBAdapter;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/samsung/mms/location/FavoritesDBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    .line 341
    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-virtual {v10}, Lcom/samsung/mms/location/PlaceDBAdapter;->open()Lcom/samsung/mms/location/PlaceDBAdapter;

    .line 344
    new-instance v10, Lcom/samsung/mms/location/RecentsDBAdapter;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/samsung/mms/location/RecentsDBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->recPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    .line 345
    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->recPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-virtual {v10}, Lcom/samsung/mms/location/PlaceDBAdapter;->open()Lcom/samsung/mms/location/PlaceDBAdapter;

    .line 348
    :try_start_0
    invoke-static {}, Lcom/samsung/mms/location/LBSManager;->destroy()V

    .line 349
    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/mms/location/LBSManager;->getInstance(Landroid/content/Context;)Lcom/samsung/mms/location/LBSManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/mms/location/LBSManager;->getNBIContext()Lcom/nbi/common/NBIContext;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->nbiContext:Lcom/nbi/common/NBIContext;
    :try_end_0
    .catch Lcom/nbi/location/LocationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_1
    const/4 v5, 0x0

    .line 361
    .local v5, location:Lcom/nbi/location/Location;
    const-string v10, "MAP_LOCATION"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 362
    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v11, "latitude"

    const v12, 0x420dd7b7

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v10

    float-to-double v3, v10

    .line 363
    .local v3, latitude:D
    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v11, "longitude"

    const v12, -0x3d3e4a00

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v10

    float-to-double v6, v10

    .line 364
    .local v6, longitude:D
    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v11, "zoom"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 365
    .local v9, savedZoomLevel:I
    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v11, "first_tracking"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->firstTracking:Z

    .line 366
    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v11, "init_first_location"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->bInitFirstLocation:Z

    .line 368
    iget v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I

    if-eqz v10, :cond_1

    iget v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    :cond_1
    const/4 v10, 0x1

    :goto_2
    iput-boolean v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->followMe:Z

    .line 371
    new-instance v5, Lcom/nbi/location/Location;

    .end local v5           #location:Lcom/nbi/location/Location;
    invoke-direct {v5}, Lcom/nbi/location/Location;-><init>()V

    .line 372
    .restart local v5       #location:Lcom/nbi/location/Location;
    invoke-virtual {v5, v3, v4}, Lcom/nbi/location/Location;->setLatitude(D)V

    .line 373
    invoke-virtual {v5, v6, v7}, Lcom/nbi/location/Location;->setLongitude(D)V

    .line 376
    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->nbiContext:Lcom/nbi/common/NBIContext;

    invoke-static {v10, v5}, Lcom/nbi/map/android/MapConfiguration;->defaultConfigurationFromLocation(Lcom/nbi/common/NBIContext;Lcom/nbi/location/Location;)Lcom/nbi/map/android/MapConfiguration;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapConfiguration:Lcom/nbi/map/android/MapConfiguration;

    .line 377
    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapConfiguration:Lcom/nbi/map/android/MapConfiguration;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/nbi/map/android/MapConfiguration;->setShowUncertaintyRadius(Z)V

    .line 378
    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapConfiguration:Lcom/nbi/map/android/MapConfiguration;

    invoke-virtual {v10, v9}, Lcom/nbi/map/android/MapConfiguration;->setZoom(I)V

    .line 379
    const-string v10, "ZoomLevel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Read and Apply Zoom Level"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapConfiguration:Lcom/nbi/map/android/MapConfiguration;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/nbi/map/android/MapConfiguration;->setZoomButtons(Z)V

    .line 386
    :try_start_1
    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    iget-object v11, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapConfiguration:Lcom/nbi/map/android/MapConfiguration;

    invoke-virtual {v10, v11}, Lcom/nbi/map/android/MapView;->setConfiguration(Lcom/nbi/map/android/MapConfiguration;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 397
    :goto_3
    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    iget-object v11, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v10, v11}, Lcom/nbi/map/android/MapView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 398
    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    iget-object v11, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapPinEventListener:Lcom/nbi/map/android/MapView$OnPinEventListener;

    invoke-virtual {v10, v11}, Lcom/nbi/map/android/MapView;->setOnPinEventListener(Lcom/nbi/map/android/MapView$OnPinEventListener;)V

    .line 399
    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    iget-object v11, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapChangeListener:Lcom/nbi/map/android/MapView$OnMapCenterAndZoomChangeListener;

    invoke-virtual {v10, v11}, Lcom/nbi/map/android/MapView;->setOnMapCenterAndZoomChangeListener(Lcom/nbi/map/android/MapView$OnMapCenterAndZoomChangeListener;)V

    .line 400
    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    iget-object v11, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapConfiguration:Lcom/nbi/map/android/MapConfiguration;

    invoke-virtual {v11}, Lcom/nbi/map/android/MapConfiguration;->getZoom()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/nbi/map/android/MapView;->setZoomLevel(IZ)Z

    .line 401
    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/nbi/map/android/MapView;->mapShowLocation(Z)Z

    .line 404
    iget-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/nbi/map/android/MapView;->showPinLayer(Z)Z

    .line 407
    new-instance v10, Lcom/samsung/mms/location/NavigationHandler;

    iget-object v11, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    iget-object v12, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapConfiguration:Lcom/nbi/map/android/MapConfiguration;

    invoke-direct {v10, p0, v11, v12}, Lcom/samsung/mms/location/NavigationHandler;-><init>(Lcom/samsung/mms/location/LocationMapActivity;Lcom/nbi/map/android/MapView;Lcom/nbi/map/android/MapConfiguration;)V

    iput-object v10, p0, Lcom/samsung/mms/location/LocationMapActivity;->navigationHandler:Lcom/samsung/mms/location/NavigationHandler;

    .line 410
    invoke-direct {p0}, Lcom/samsung/mms/location/LocationMapActivity;->readIntentMapData()V

    goto/16 :goto_0

    .line 351
    .end local v3           #latitude:D
    .end local v5           #location:Lcom/nbi/location/Location;
    .end local v6           #longitude:D
    .end local v9           #savedZoomLevel:I
    :catch_0
    move-exception v1

    .line 352
    .local v1, e:Lcom/nbi/location/LocationException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 353
    invoke-direct {p0, p0}, Lcom/samsung/mms/location/LocationMapActivity;->displayLoadErrorDialog(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 368
    .end local v1           #e:Lcom/nbi/location/LocationException;
    .restart local v3       #latitude:D
    .restart local v5       #location:Lcom/nbi/location/Location;
    .restart local v6       #longitude:D
    .restart local v9       #savedZoomLevel:I
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 388
    :catch_1
    move-exception v2

    .line 390
    .local v2, error:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 393
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    .line 394
    .local v8, pid:I
    invoke-static {v8}, Landroid/os/Process;->killProcess(I)V

    goto :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 2979
    const/4 v0, 0x0

    .line 2981
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 2989
    :goto_0
    return-object v0

    .line 2983
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/mms/location/LocationMapActivity;->createLocSettingDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 2984
    goto :goto_0

    .line 2986
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/mms/location/LocationMapActivity;->createLocWifiEnableDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 2981
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const v4, 0x7f0e0257

    const/4 v3, 0x1

    .line 939
    iget v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 956
    :goto_0
    return v3

    .line 943
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 944
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0d0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 946
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    .line 947
    const v1, 0x7f0e0258

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mMyLocation:Landroid/view/MenuItem;

    .line 948
    const v1, 0x7f0e0259

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mFavoriteLocation:Landroid/view/MenuItem;

    .line 949
    const v1, 0x7f0e025a

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mRecentLocation:Landroid/view/MenuItem;

    .line 951
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSearchView:Landroid/widget/SearchView;

    .line 952
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 953
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 560
    const-string v1, "map"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->mbHasInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-boolean v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mbHasInitialized:Z

    if-eqz v1, :cond_3

    .line 567
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLookup:Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLookup:Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    invoke-virtual {v1}, Lcom/nbi/map/geocode/ReverseGeocodeRequest;->isRequestInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLookup:Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    invoke-virtual {v1}, Lcom/nbi/map/geocode/ReverseGeocodeRequest;->cancelRequest()V

    .line 569
    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->mediaLookup:Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    .line 572
    :cond_0
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 573
    .local v0, prefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "init_first_location"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 574
    const-string v1, "first_tracking"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 575
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 578
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-virtual {v1}, Lcom/samsung/mms/location/PlaceDBAdapter;->close()V

    .line 579
    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    .line 580
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->recPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-virtual {v1}, Lcom/samsung/mms/location/PlaceDBAdapter;->close()V

    .line 581
    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->recPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    .line 583
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnGo:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnOk:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 586
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchFieldTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 587
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;

    invoke-virtual {v1, v4}, Lcom/samsung/mms/location/SearchEditText;->setOnSearchEditorBackAction(Lcom/samsung/mms/location/OnSearchEditorBackAction;)V

    .line 588
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnRecent:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnFavorite:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnVZNavigate:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchTypeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 594
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v1, v4}, Lcom/nbi/map/android/MapView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 595
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v1, v4}, Lcom/nbi/map/android/MapView;->setOnPinEventListener(Lcom/nbi/map/android/MapView$OnPinEventListener;)V

    .line 596
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v1, v4}, Lcom/nbi/map/android/MapView;->setOnMapCenterAndZoomChangeListener(Lcom/nbi/map/android/MapView$OnMapCenterAndZoomChangeListener;)V

    .line 597
    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    .line 599
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->nbiContext:Lcom/nbi/common/NBIContext;

    if-eqz v1, :cond_1

    .line 601
    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->nbiContext:Lcom/nbi/common/NBIContext;

    .line 604
    :cond_1
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->navigationHandler:Lcom/samsung/mms/location/NavigationHandler;

    if-eqz v1, :cond_2

    .line 605
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->navigationHandler:Lcom/samsung/mms/location/NavigationHandler;

    invoke-virtual {v1}, Lcom/samsung/mms/location/NavigationHandler;->onDestroy()V

    .line 606
    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->navigationHandler:Lcom/samsung/mms/location/NavigationHandler;

    .line 609
    :cond_2
    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapConfiguration:Lcom/nbi/map/android/MapConfiguration;

    .line 610
    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 611
    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->navigationHandler:Lcom/samsung/mms/location/NavigationHandler;

    .line 612
    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationListener:Lcom/nbi/location/LocationListener;

    .line 614
    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->navigationBar:Landroid/widget/RelativeLayout;

    .line 615
    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchResultsList:Landroid/widget/ListView;

    .line 616
    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationMenuList:Landroid/widget/ListView;

    .line 617
    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchTypeRadioGroup:Landroid/widget/RadioGroup;

    .line 618
    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchField:Lcom/samsung/mms/location/SearchEditText;

    .line 619
    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnRecent:Landroid/widget/Button;

    .line 620
    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnFavorite:Landroid/widget/Button;

    .line 621
    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnGo:Landroid/widget/Button;

    .line 622
    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnOk:Landroid/widget/Button;

    .line 623
    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnVZNavigate:Landroid/widget/Button;

    .line 624
    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->pinBubble:Lcom/samsung/mms/location/PinBubbleView;

    .line 626
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 627
    invoke-virtual {p0, v5}, Landroid/app/Activity;->removeDialog(I)V

    .line 631
    .end local v0           #prefEditor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->progressBar:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 632
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mNoNetworkDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_4

    .line 634
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mNoNetworkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 635
    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->mNoNetworkDialog:Landroid/app/AlertDialog;

    .line 637
    :cond_4
    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->progressBar:Landroid/view/View;

    .line 638
    iput-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->mContext:Landroid/content/Context;

    .line 640
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 641
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 647
    if-ne p1, v2, :cond_0

    .line 649
    iget v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->currentFocusMode:I

    packed-switch v0, :pswitch_data_0

    .line 697
    :cond_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 653
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V

    move v0, v1

    .line 654
    goto :goto_0

    .line 657
    :pswitch_2
    iget-boolean v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchPerformed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchResultsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->isStartupSearch:Z

    if-eqz v0, :cond_1

    .line 659
    invoke-direct {p0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V

    move v0, v1

    .line 660
    goto :goto_0

    .line 662
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchPerformed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchResultsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 664
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V

    move v0, v1

    .line 665
    goto :goto_0

    .line 672
    :pswitch_3
    iget-boolean v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->isStartupSearch:Z

    if-nez v0, :cond_2

    .line 674
    invoke-direct {p0, v1}, Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V

    .line 681
    :goto_1
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchResultsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 682
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchResultsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 683
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchResultsList:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move v0, v1

    .line 684
    goto :goto_0

    .line 678
    :cond_2
    invoke-direct {p0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V

    goto :goto_1

    .line 689
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V

    move v0, v1

    .line 690
    goto :goto_0

    .line 649
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v6, 0x1

    .line 974
    const/4 v5, 0x1

    .line 975
    .local v5, retVal:Z
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/mms/location/LocationUtils;->haveInternet(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 977
    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->showNoInternetDialog()V

    .line 1050
    :goto_0
    return v6

    .line 981
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 1047
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    :cond_1
    :goto_1
    move v6, v5

    .line 1050
    goto :goto_0

    .line 984
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 988
    :sswitch_1
    invoke-direct {p0}, Lcom/samsung/mms/location/LocationMapActivity;->dropPinOnMapCenter()V

    goto :goto_1

    .line 992
    :sswitch_2
    iget-wide v7, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLatitude:D

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_2

    iget-wide v7, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLongitude:D

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_2

    .line 995
    new-instance v3, Lcom/nbi/location/Location;

    invoke-direct {v3}, Lcom/nbi/location/Location;-><init>()V

    .line 996
    .local v3, myLocation:Lcom/nbi/location/Location;
    iget-wide v7, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLatitude:D

    invoke-virtual {v3, v7, v8}, Lcom/nbi/location/Location;->setLatitude(D)V

    .line 997
    iget-wide v7, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLongitude:D

    invoke-virtual {v3, v7, v8}, Lcom/nbi/location/Location;->setLongitude(D)V

    .line 999
    iget-object v7, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    new-instance v8, Lcom/nbi/map/data/Coordinates;

    invoke-virtual {v3}, Lcom/nbi/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v3}, Lcom/nbi/location/Location;->getLongitude()D

    move-result-wide v11

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/nbi/map/data/Coordinates;-><init>(DD)V

    iget-object v9, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v9}, Lcom/nbi/map/android/MapView;->getZoomLevel()I

    move-result v9

    invoke-virtual {v7, v8, v9, v6}, Lcom/nbi/map/android/MapView;->setCenterAndZoomLevel(Lcom/nbi/map/data/Coordinates;IZ)V

    goto :goto_1

    .line 1005
    .end local v3           #myLocation:Lcom/nbi/location/Location;
    :cond_2
    const v6, 0x7f0a0413

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1010
    :sswitch_3
    iget-boolean v7, p0, Lcom/samsung/mms/location/LocationMapActivity;->bInitFirstLocation:Z

    if-nez v7, :cond_1

    .line 1013
    :try_start_0
    iget-object v7, p0, Lcom/samsung/mms/location/LocationMapActivity;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/mms/location/LBSManager;->getInstance(Landroid/content/Context;)Lcom/samsung/mms/location/LBSManager;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationListener:Lcom/nbi/location/LocationListener;

    invoke-virtual {v7, v8}, Lcom/samsung/mms/location/LBSManager;->startReceivingFixes(Lcom/nbi/location/LocationListener;)V
    :try_end_0
    .catch Lcom/nbi/location/LocationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    :goto_2
    iput-boolean v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->bInitFirstLocation:Z

    goto :goto_1

    .line 1014
    :catch_0
    move-exception v0

    .line 1015
    .local v0, e:Lcom/nbi/location/LocationException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 1022
    .end local v0           #e:Lcom/nbi/location/LocationException;
    :sswitch_4
    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->showSearchSelectionPopUp()V

    goto :goto_1

    .line 1027
    :sswitch_5
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/samsung/mms/location/FavoritePlacesList;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1028
    .local v1, favIntent:Landroid/content/Intent;
    const/16 v6, 0x34

    invoke-virtual {p0, v1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1033
    .end local v1           #favIntent:Landroid/content/Intent;
    :sswitch_6
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/samsung/mms/location/RecentPlacesList;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1034
    .local v4, recIntent:Landroid/content/Intent;
    const/16 v6, 0x35

    invoke-virtual {p0, v4, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1038
    .end local v4           #recIntent:Landroid/content/Intent;
    :sswitch_7
    const/16 v6, 0x32

    invoke-static {p0, v6}, Lcom/android/mms/ui/MessageUtils;->selectImage(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 1042
    :sswitch_8
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.PICK"

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1043
    .local v2, intent:Landroid/content/Intent;
    const/16 v6, 0x33

    invoke-virtual {p0, v2, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 981
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0e0257 -> :sswitch_4
        0x7f0e0258 -> :sswitch_2
        0x7f0e0259 -> :sswitch_5
        0x7f0e025a -> :sswitch_6
        0x7f0e025b -> :sswitch_7
        0x7f0e025c -> :sswitch_8
        0x7f0e025d -> :sswitch_1
        0x7f0e025e -> :sswitch_3
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 530
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 531
    iget-boolean v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mbHasInitialized:Z

    if-nez v1, :cond_0

    .line 544
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 535
    .local v0, prefEditor:Landroid/content/SharedPreferences$Editor;
    iget-wide v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLatitude:D

    cmpl-double v1, v1, v4

    if-eqz v1, :cond_1

    const-string v1, "latitude"

    iget-wide v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLatitude:D

    double-to-float v2, v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 536
    :cond_1
    iget-wide v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLongitude:D

    cmpl-double v1, v1, v4

    if-eqz v1, :cond_2

    const-string v1, "longitude"

    iget-wide v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->lastLongitude:D

    double-to-float v2, v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 537
    :cond_2
    const-string v1, "first_tracking"

    iget-boolean v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->firstTracking:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 538
    const-string v1, "init_first_location"

    iget-boolean v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->bInitFirstLocation:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 539
    const-string v1, "zoom"

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v2}, Lcom/nbi/map/android/MapView;->getZoomLevel()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 540
    const-string v1, "ZoomLevel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saving Zoom Level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v3}, Lcom/nbi/map/android/MapView;->getZoomLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v1, "follow_me"

    iget-boolean v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->followMe:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 543
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 1054
    iget v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1056
    const v0, 0x7f0e025d

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 1058
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 968
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .parameter "query"

    .prologue
    .line 961
    const-string v0, "NGM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call to onQueryTextSubmit text is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    invoke-direct {p0, p1}, Lcom/samsung/mms/location/LocationMapActivity;->searchLocation(Ljava/lang/String;)V

    .line 963
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 520
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 521
    iget-boolean v0, p0, Lcom/samsung/mms/location/LocationMapActivity;->mbHasInitialized:Z

    if-nez v0, :cond_0

    .line 525
    :goto_0
    return-void

    .line 524
    :cond_0
    invoke-direct {p0}, Lcom/samsung/mms/location/LocationMapActivity;->showLocSettingIfNecessary()V

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 702
    const-string v0, "NGM"

    const-string v1, "Inside onSearchRequested called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 11

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 428
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 429
    iget-boolean v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mbHasInitialized:Z

    if-nez v1, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    invoke-direct {p0}, Lcom/samsung/mms/location/LocationMapActivity;->showWifiEnabledDialogIfNeeded()V

    .line 434
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "search_type"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 436
    .local v9, searchType:I
    iget v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I

    packed-switch v1, :pswitch_data_0

    .line 498
    :goto_1
    packed-switch v9, :pswitch_data_1

    .line 508
    :goto_2
    iget-boolean v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->bInitFirstLocation:Z

    if-eqz v1, :cond_0

    .line 510
    :try_start_0
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/mms/location/LBSManager;->getInstance(Landroid/content/Context;)Lcom/samsung/mms/location/LBSManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationListener:Lcom/nbi/location/LocationListener;

    invoke-virtual {v1, v2}, Lcom/samsung/mms/location/LBSManager;->startReceivingFixes(Lcom/nbi/location/LocationListener;)V
    :try_end_0
    .catch Lcom/nbi/location/LocationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 511
    :catch_0
    move-exception v8

    .line 512
    .local v8, e:Lcom/nbi/location/LocationException;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 443
    .end local v8           #e:Lcom/nbi/location/LocationException;
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V

    goto :goto_1

    .line 448
    :pswitch_1
    iput-boolean v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->isStartupSearch:Z

    .line 451
    const/4 v9, 0x1

    .line 454
    invoke-direct {p0, v4}, Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V

    goto :goto_1

    .line 459
    :pswitch_2
    iput-boolean v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->isStartupSearch:Z

    .line 462
    const/4 v9, 0x0

    .line 465
    invoke-direct {p0, v4}, Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V

    goto :goto_1

    .line 471
    :pswitch_3
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V

    goto :goto_1

    .line 476
    :pswitch_4
    invoke-direct {p0, v3}, Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V

    .line 478
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/mms/location/LocationUtils;->haveInternet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 480
    invoke-virtual {p0}, Lcom/samsung/mms/location/LocationMapActivity;->showNoInternetDialog()V

    goto :goto_0

    .line 485
    :cond_2
    const/4 v10, 0x1

    .line 486
    .local v10, showResultsList:Z
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_place_address"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 487
    .local v7, address:Ljava/lang/String;
    const-string v1, "LocationMapActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " OnStart() Address"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    new-instance v0, Lcom/samsung/mms/location/GeocodeSearchHandler;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchResultsList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;

    iget-object v5, p0, Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    iget-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/mms/location/GeocodeSearchHandler;-><init>(Landroid/app/Activity;ZLandroid/widget/ListView;Lcom/nbi/map/android/MapView;Lcom/samsung/mms/location/PlaceDBAdapter;Lcom/samsung/mms/location/SearchHandlerListener;)V

    .line 493
    .local v0, geoHandler:Lcom/samsung/mms/location/GeocodeSearchHandler;
    invoke-virtual {v0, v7}, Lcom/samsung/mms/location/GeocodeSearchHandler;->performSearch(Ljava/lang/String;)V

    goto :goto_1

    .line 501
    .end local v0           #geoHandler:Lcom/samsung/mms/location/GeocodeSearchHandler;
    .end local v7           #address:Ljava/lang/String;
    .end local v10           #showResultsList:Z
    :pswitch_5
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchTypeRadioGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0e011b

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_2

    .line 504
    :pswitch_6
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->searchTypeRadioGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0e011c

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_2

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 498
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 549
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 551
    :try_start_0
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/mms/location/LBSManager;->getInstance(Landroid/content/Context;)Lcom/samsung/mms/location/LBSManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationListener:Lcom/nbi/location/LocationListener;

    invoke-virtual {v1, v2}, Lcom/samsung/mms/location/LBSManager;->stopReceivingFixes(Lcom/nbi/location/LocationListener;)V
    :try_end_0
    .catch Lcom/nbi/location/LocationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :goto_0
    return-void

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, e:Lcom/nbi/location/LocationException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public showFavoriteList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1126
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-virtual {v2}, Lcom/samsung/mms/location/PlaceDBAdapter;->getAllPlaces()Ljava/util/Vector;

    move-result-object v0

    .line 1128
    .local v0, favoritePlaces:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/nbi/map/data/Place;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1131
    new-instance v1, Lcom/samsung/mms/location/LocationListAdapter;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/samsung/mms/location/LocationListAdapter;-><init>(Landroid/content/Context;Lcom/samsung/mms/location/PlaceDBAdapter;Ljava/util/Vector;Z)V

    .line 1133
    .local v1, locationListAdapter:Lcom/samsung/mms/location/LocationListAdapter;
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationMenuList:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1134
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationMenuList:Landroid/widget/ListView;

    new-instance v3, Lcom/samsung/mms/location/LocationMapActivity$LocationItemClickListener;

    invoke-direct {v3, p0, v0}, Lcom/samsung/mms/location/LocationMapActivity$LocationItemClickListener;-><init>(Lcom/samsung/mms/location/LocationMapActivity;Ljava/util/Vector;)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1135
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationMenuList:Landroid/widget/ListView;

    new-instance v3, Lcom/samsung/mms/location/LocationMapActivity$LocationItemContextMenuListener;

    invoke-direct {v3, p0, v0}, Lcom/samsung/mms/location/LocationMapActivity$LocationItemContextMenuListener;-><init>(Lcom/samsung/mms/location/LocationMapActivity;Ljava/util/Vector;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1136
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V

    .line 1138
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnRecent:Landroid/widget/Button;

    const v3, 0x7f02009a

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1139
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnFavorite:Landroid/widget/Button;

    const v3, 0x7f0200f2

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1145
    .end local v1           #locationListAdapter:Lcom/samsung/mms/location/LocationListAdapter;
    :goto_0
    return-void

    .line 1142
    :cond_0
    const v2, 0x7f0a03ef

    invoke-static {p0, v2, v4}, Lcom/samsung/mms/location/LocationUtils;->showToastOnUIThread(Landroid/app/Activity;II)V

    .line 1143
    const-string v2, "LocationMapActivity"

    const-string v3, "recentClickListener:onClick() - no recent places in database"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showNoInternetDialog()V
    .locals 4

    .prologue
    .line 3210
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mNoNetworkDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_1

    .line 3212
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3213
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a0430

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0431

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0432

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/mms/location/LocationMapActivity$29;

    invoke-direct {v3, p0}, Lcom/samsung/mms/location/LocationMapActivity$29;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0433

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/mms/location/LocationMapActivity$28;

    invoke-direct {v3, p0}, Lcom/samsung/mms/location/LocationMapActivity$28;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3226
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mNoNetworkDialog:Landroid/app/AlertDialog;

    .line 3230
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 3228
    :cond_1
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mNoNetworkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3229
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity;->mNoNetworkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public showRecentList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1149
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->recPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-virtual {v2}, Lcom/samsung/mms/location/PlaceDBAdapter;->getAllPlaces()Ljava/util/Vector;

    move-result-object v1

    .line 1151
    .local v1, recentPlaces:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/nbi/map/data/Place;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1154
    new-instance v0, Lcom/samsung/mms/location/LocationListAdapter;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/samsung/mms/location/LocationListAdapter;-><init>(Landroid/content/Context;Lcom/samsung/mms/location/PlaceDBAdapter;Ljava/util/Vector;Z)V

    .line 1156
    .local v0, locationListAdapter:Lcom/samsung/mms/location/LocationListAdapter;
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationMenuList:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1157
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationMenuList:Landroid/widget/ListView;

    new-instance v3, Lcom/samsung/mms/location/LocationMapActivity$LocationItemClickListener;

    invoke-direct {v3, p0, v1}, Lcom/samsung/mms/location/LocationMapActivity$LocationItemClickListener;-><init>(Lcom/samsung/mms/location/LocationMapActivity;Ljava/util/Vector;)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1158
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->locationMenuList:Landroid/widget/ListView;

    new-instance v3, Lcom/samsung/mms/location/LocationMapActivity$LocationItemContextMenuListener;

    invoke-direct {v3, p0, v1}, Lcom/samsung/mms/location/LocationMapActivity$LocationItemContextMenuListener;-><init>(Lcom/samsung/mms/location/LocationMapActivity;Ljava/util/Vector;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1159
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V

    .line 1161
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnRecent:Landroid/widget/Button;

    const v3, 0x7f02009b

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1162
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity;->btnFavorite:Landroid/widget/Button;

    const v3, 0x7f0200f1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1168
    .end local v0           #locationListAdapter:Lcom/samsung/mms/location/LocationListAdapter;
    :goto_0
    return-void

    .line 1165
    :cond_0
    const v2, 0x7f0a03f0

    invoke-static {p0, v2, v4}, Lcom/samsung/mms/location/LocationUtils;->showToastOnUIThread(Landroid/app/Activity;II)V

    .line 1166
    const-string v2, "LocationMapActivity"

    const-string v3, "recentClickListener:onClick() - no recent places in database"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showReverseGeocodeError()V
    .locals 3

    .prologue
    .line 3194
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3195
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a041d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0434

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3198
    const v1, 0x7f0a0433

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/mms/location/LocationMapActivity$27;

    invoke-direct {v2, p0}, Lcom/samsung/mms/location/LocationMapActivity$27;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3204
    return-void
.end method

.method public showSearchSelectionPopUp()V
    .locals 3

    .prologue
    .line 1089
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1091
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a043a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1092
    const v1, 0x7f070037

    new-instance v2, Lcom/samsung/mms/location/LocationMapActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/mms/location/LocationMapActivity$3;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1108
    new-instance v1, Lcom/samsung/mms/location/LocationMapActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/mms/location/LocationMapActivity$4;-><init>(Lcom/samsung/mms/location/LocationMapActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1120
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1121
    return-void
.end method

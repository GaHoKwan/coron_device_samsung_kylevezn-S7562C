.class public Lcom/android/mms/ui/BubbleTypePicker;
.super Lcom/android/mms/ui/MessageBubbleActivity;
.source "BubbleTypePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;
    }
.end annotation


# static fields
.field private static final BUBBLE_RECEIVE_TYPE:I = 0x1

.field private static final BUBBLE_RECEIVE_VERTICAL_TYPE:I = 0x3

.field private static final BUBBLE_SEND_TYPE:I = 0x0

.field private static final BUBBLE_SEND_VERTICAL_TYPE:I = 0x2

.field private static final BUBBLE_TYPE:[Ljava/lang/String; = null

.field public static final BUBBLE_TYPE_DEFAULT:Ljava/lang/String; = "Default"

.field public static final BUBBLE_TYPE_LABEL:Ljava/lang/String; = "Label"

.field public static final BUBBLE_TYPE_MODERN:Ljava/lang/String; = "Modern"

.field public static final BUBBLE_TYPE_ORIGAMI:Ljava/lang/String; = "Origami"

.field public static final BUBBLE_TYPE_POP:Ljava/lang/String; = "Pop"

.field public static final BUBBLE_TYPE_POST:Ljava/lang/String; = "Post"


# instance fields
.field private MoveToSelectedReceive:Z

.field private MoveToSelectedSent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Origami"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Label"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Modern"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Post"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Default"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/BubbleTypePicker;->BUBBLE_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lcom/android/mms/ui/MessageBubbleActivity;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedSent:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedReceive:Z

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/BubbleTypePicker;ILandroid/widget/AdapterView;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/BubbleTypePicker;->setImageView(ILandroid/widget/AdapterView;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/BubbleTypePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/mms/ui/BubbleTypePicker;->setScrollPosition()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/BubbleTypePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedSent:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/BubbleTypePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedSent:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/BubbleTypePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedReceive:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/BubbleTypePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedReceive:Z

    return p1
.end method

.method private makeBubbleVertical(I)V
    .locals 6
    .parameter "type"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 78
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 80
    .local v0, density:F
    const/4 v1, 0x0

    .line 81
    .local v1, gallery:Landroid/widget/GridView;
    if-ne p1, v5, :cond_4

    .line 82
    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    .line 93
    :goto_0
    if-eqz p1, :cond_0

    if-ne p1, v3, :cond_1

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/BubbleTypePicker;->setScrollPosition()V

    .line 96
    :cond_1
    new-instance v2, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;

    invoke-direct {v2, p0, p0, p1}, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;-><init>(Lcom/android/mms/ui/BubbleTypePicker;Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    new-instance v2, Lcom/android/mms/ui/BubbleTypePicker$1;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/BubbleTypePicker$1;-><init>(Lcom/android/mms/ui/BubbleTypePicker;I)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 143
    new-instance v2, Lcom/android/mms/ui/BubbleTypePicker$2;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/BubbleTypePicker$2;-><init>(Lcom/android/mms/ui/BubbleTypePicker;I)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 169
    if-eqz p1, :cond_2

    if-ne p1, v5, :cond_8

    .line 170
    :cond_2
    iget v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    if-ne v2, v3, :cond_7

    .line 171
    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setSelection(I)V

    .line 183
    :cond_3
    :goto_1
    return-void

    .line 83
    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 84
    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    goto :goto_0

    .line 85
    :cond_5
    if-nez p1, :cond_6

    .line 86
    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    goto :goto_0

    .line 87
    :cond_6
    if-ne p1, v3, :cond_3

    .line 88
    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    goto :goto_0

    .line 173
    :cond_7
    iget v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_1

    .line 176
    :cond_8
    iget v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    if-ne v2, v3, :cond_9

    .line 177
    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_1

    .line 179
    :cond_9
    iget v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_1
.end method

.method private saveBubbleReceiveStyle(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 290
    sget-object v3, Lcom/android/mms/ui/BubbleTypePicker;->BUBBLE_RECEIVE_STYLE_ID:[I

    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 300
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 295
    .local v0, editPrefs:Landroid/content/SharedPreferences$Editor;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 296
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v3, "pref_key_bubble_style"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    rem-int/lit8 v2, v3, 0xa

    .line 298
    .local v2, sendStyle:I
    const-string v3, "pref_key_bubble_style"

    mul-int/lit8 v4, p1, 0xa

    add-int/2addr v4, v2

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 299
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private saveBubbleSentStyle(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 277
    sget-object v3, Lcom/android/mms/ui/BubbleTypePicker;->BUBBLE_SEND_STYLE_ID:[I

    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 287
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 282
    .local v0, editPrefs:Landroid/content/SharedPreferences$Editor;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 283
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v3, "pref_key_bubble_style"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    div-int/lit8 v2, v3, 0xa

    .line 285
    .local v2, receiveStyle:I
    const-string v3, "pref_key_bubble_style"

    mul-int/lit8 v4, v2, 0xa

    add-int/2addr v4, p1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 286
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private setImageView(ILandroid/widget/AdapterView;Landroid/view/View;)V
    .locals 7
    .parameter "position"
    .parameter
    .parameter "v"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    .line 205
    move-object v1, p2

    .line 206
    .local v1, group:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 207
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 208
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 209
    .local v3, imageView:Landroid/widget/ImageView;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 210
    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    .end local v3           #imageView:Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02029d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 216
    invoke-virtual {p3, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 217
    return-void
.end method

.method private setScrollPosition()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/android/mms/ui/BubbleTypePicker$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BubbleTypePicker$3;-><init>(Lcom/android/mms/ui/BubbleTypePicker;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 195
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/android/mms/ui/BubbleTypePicker$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BubbleTypePicker$4;-><init>(Lcom/android/mms/ui/BubbleTypePicker;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 203
    return-void
.end method


# virtual methods
.method public final makeView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 67
    invoke-super {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->makeView()V

    .line 69
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->setActionBar()V

    .line 71
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGScroll:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/mms/ui/BubbleTypePicker;->refreshLayout()V

    .line 75
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 259
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageBubbleActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/mms/ui/BubbleTypePicker;->refreshLayout()V

    .line 261
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    const/4 v0, 0x1

    .line 58
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageBubbleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/mms/ui/BubbleTypePicker;->makeView()V

    .line 61
    iput-boolean v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedSent:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedReceive:Z

    .line 63
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keycode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 413
    const/16 v1, 0x14

    if-ne p1, v1, :cond_2

    .line 414
    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    sget-object v2, Lcom/android/mms/ui/BubbleTypePicker;->BUBBLE_SEND_STYLE_ID:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 419
    :cond_0
    :goto_0
    return v0

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    sget-object v2, Lcom/android/mms/ui/BubbleTypePicker;->BUBBLE_RECEIVE_STYLE_ID:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 419
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 265
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 273
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageBubbleActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 267
    :pswitch_0
    iget v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BubbleTypePicker;->saveBubbleSentStyle(I)V

    .line 268
    iget v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BubbleTypePicker;->saveBubbleReceiveStyle(I)V

    .line 269
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 270
    const/4 v0, 0x1

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public refreshLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 221
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 228
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mLayoutHorizontal:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 232
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BubbleTypePicker;->makeBubbleVertical(I)V

    .line 233
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BubbleTypePicker;->makeBubbleVertical(I)V

    .line 256
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mLayoutHorizontal:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iput-boolean v3, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedSent:Z

    .line 240
    iput-boolean v3, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedReceive:Z

    .line 241
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 242
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 243
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 246
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 247
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 249
    invoke-direct {p0, v1}, Lcom/android/mms/ui/BubbleTypePicker;->makeBubbleVertical(I)V

    .line 250
    invoke-direct {p0, v3}, Lcom/android/mms/ui/BubbleTypePicker;->makeBubbleVertical(I)V

    .line 251
    invoke-direct {p0}, Lcom/android/mms/ui/BubbleTypePicker;->setScrollPosition()V

    goto :goto_0
.end method

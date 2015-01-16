.class public Lcom/sec/widget/lso/EmergencyPhoneWidget;
.super Landroid/widget/LinearLayout;
.source "EmergencyPhoneWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final BG_COLOR:I = -0x1000000

#the value of this static final field might be set in the static constructor
.field private static final BG_COLOR_ONFOCUS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LSO"

.field private static final TXT_COLOR:I = -0x1


# instance fields
.field private mBtn:Landroid/widget/Button;

.field private mContainer:Landroid/widget/LinearLayout;

.field private final mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageMaxSize:I

.field private mImgView:Landroid/widget/ImageView;

.field private mPhoneAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 73
    const/16 v0, 0xc8

    const/16 v1, 0x52

    const/16 v2, 0xdb

    const/16 v3, 0xe2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->BG_COLOR_ONFOCUS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77
    iput-object p1, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Lcom/sec/widget/lso/EmergencyPhoneWidget;->initialize()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    iput-object p1, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    .line 86
    invoke-direct {p0}, Lcom/sec/widget/lso/EmergencyPhoneWidget;->initialize()V

    .line 88
    return-void
.end method

.method private callEmergencyNumber()V
    .locals 4

    .prologue
    .line 190
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, callIntent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mPhoneAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 193
    iget-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    .end local v0           #callIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v1

    .line 195
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "LSO"

    const-string v3, "Failed to place Emergency call"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 196
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    .line 197
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "LSO"

    const-string v3, "Failed to place Emergency call"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initialize()V
    .locals 8

    .prologue
    const/16 v7, 0x11

    const/4 v4, 0x5

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 91
    iget-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    const/16 v3, 0x32

    invoke-static {v2, v3}, Landroid/app/enterprise/lso/LSOUtils;->convertDipToPixel(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mImageMaxSize:I

    .line 93
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 94
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    .line 95
    iget-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 96
    iget-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 97
    iget-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 100
    iget-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    iget-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 103
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    .line 104
    iget-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    const v3, 0x108061c

    invoke-static {v2, v3}, Landroid/app/enterprise/lso/LSOUtils;->getResourceDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 107
    .local v1, drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    .local v0, bmp:Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mImageMaxSize:I

    iget v3, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mImageMaxSize:I

    invoke-static {v0, v2, v3}, Landroid/app/enterprise/lso/LSOUtils;->scaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 111
    .restart local v1       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 113
    iget-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 116
    iget-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    .line 119
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    .line 120
    iget-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    const v4, 0x104021c

    invoke-static {v3, v4}, Landroid/app/enterprise/lso/LSOUtils;->getResourceString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    iget-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 127
    iget-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    .line 129
    iget-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 130
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mPhoneAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 135
    invoke-direct {p0}, Lcom/sec/widget/lso/EmergencyPhoneWidget;->callEmergencyNumber()V

    .line 136
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 204
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    iget-object v0, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/sec/widget/lso/EmergencyPhoneWidget;->BG_COLOR_ONFOCUS:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 210
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 207
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .parameter "attrName"
    .parameter "attrValue"

    .prologue
    .line 140
    if-nez p1, :cond_1

    .line 186
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 147
    .restart local p2
    :cond_1
    :try_start_0
    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetAttribute("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v3, "epw:phoneNumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mPhoneAction:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    .end local p2
    :catch_0
    move-exception v2

    .line 184
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    .end local v2           #e:Ljava/lang/Exception;
    .restart local p2
    :cond_2
    :try_start_1
    const-string v3, "android:text"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 151
    iget-object v3, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 152
    :cond_3
    const-string v3, "epw:showBG"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 153
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    iget-object v3, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 157
    .restart local p2
    :cond_4
    const-string v3, "epw:showText"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 158
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_5

    .line 159
    iget-object v3, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 161
    :cond_5
    iget-object v3, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 163
    .restart local p2
    :cond_6
    const-string v3, "android:maxLines"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 164
    iget-object v3, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_0

    .line 165
    .restart local p2
    :cond_7
    const-string v3, "android:gravity"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 166
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_0

    .line 167
    .restart local p2
    :cond_8
    const-string v3, "android:orientation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 168
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    iget-object v3, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_0

    .line 171
    .restart local p2
    :cond_9
    const-string v3, "android:src"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    check-cast p2, Ljava/lang/String;

    .end local p2
    iget v3, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mImageMaxSize:I

    invoke-static {p2, v3}, Landroid/app/enterprise/lso/LSOUtils;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 173
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 174
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 175
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 176
    iget-object v3, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 177
    iget-object v3, p0, Lcom/sec/widget/lso/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.class public Lcom/android/mms/ui/FontSizeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FontSizeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDensityScale:F

.field private mFontSizeNames:[Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTempFontSizeNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    const/high16 v0, -0x8000

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/FontSizeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 30
    iput-object p1, p0, Lcom/android/mms/ui/FontSizeAdapter;->mContext:Landroid/content/Context;

    .line 31
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/FontSizeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mms/ui/FontSizeAdapter;->mDensityScale:F

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FontSizeAdapter;->mTempFontSizeNames:[Ljava/lang/String;

    .line 36
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/FontSizeAdapter;->mTempFontSizeNames:[Ljava/lang/String;

    aget-object v1, v1, v2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/mms/ui/FontSizeAdapter;->mTempFontSizeNames:[Ljava/lang/String;

    aget-object v1, v1, v3

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/mms/ui/FontSizeAdapter;->mTempFontSizeNames:[Ljava/lang/String;

    aget-object v1, v1, v4

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/android/mms/ui/FontSizeAdapter;->mTempFontSizeNames:[Ljava/lang/String;

    aget-object v1, v1, v5

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/android/mms/ui/FontSizeAdapter;->mTempFontSizeNames:[Ljava/lang/String;

    aget-object v1, v1, v6

    aput-object v1, v0, v6

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/mms/ui/FontSizeAdapter;->mTempFontSizeNames:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/ui/FontSizeAdapter;->mFontSizeNames:[Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 45
    if-nez p2, :cond_0

    .line 46
    iget-object v1, p0, Lcom/android/mms/ui/FontSizeAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090012

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    .local v0, v:Landroid/widget/TextView;
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/FontSizeAdapter;->mFontSizeNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-static {p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizePreferenceDialogFontSize(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 55
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 56
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 58
    return-object v0

    .end local v0           #v:Landroid/widget/TextView;
    :cond_0
    move-object v0, p2

    .line 48
    check-cast v0, Landroid/widget/TextView;

    .restart local v0       #v:Landroid/widget/TextView;
    goto :goto_0
.end method

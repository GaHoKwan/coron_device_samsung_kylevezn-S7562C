.class public Lcom/samsung/mms/location/LocationListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LocationListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/nbi/map/data/Place;",
        ">;"
    }
.end annotation


# instance fields
.field protected items:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/nbi/map/data/Place;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

.field private mShowNumbering:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/mms/location/PlaceDBAdapter;Ljava/util/Vector;Z)V
    .locals 2
    .parameter "context"
    .parameter "favPlaceDBAdapter"
    .parameter
    .parameter "showNumbering"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/mms/location/PlaceDBAdapter;",
            "Ljava/util/Vector",
            "<",
            "Lcom/nbi/map/data/Place;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, objects:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/nbi/map/data/Place;>;"
    const/4 v1, 0x0

    .line 41
    const v0, 0x7f030046

    invoke-direct {p0, p1, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 26
    iput-object v1, p0, Lcom/samsung/mms/location/LocationListAdapter;->items:Ljava/util/Vector;

    .line 27
    iput-object v1, p0, Lcom/samsung/mms/location/LocationListAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object v1, p0, Lcom/samsung/mms/location/LocationListAdapter;->mPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/mms/location/LocationListAdapter;->mShowNumbering:Z

    .line 42
    iput-object p1, p0, Lcom/samsung/mms/location/LocationListAdapter;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/samsung/mms/location/LocationListAdapter;->mPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    .line 44
    iput-object p3, p0, Lcom/samsung/mms/location/LocationListAdapter;->items:Ljava/util/Vector;

    .line 45
    iput-boolean p4, p0, Lcom/samsung/mms/location/LocationListAdapter;->mShowNumbering:Z

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/mms/location/LocationListAdapter;)Lcom/samsung/mms/location/PlaceDBAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/mms/location/LocationListAdapter;->mPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/mms/location/LocationListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/mms/location/LocationListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 51
    if-nez p2, :cond_0

    .line 52
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/mms/location/LocationListAdapter;->mContext:Landroid/content/Context;

    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 53
    .local v5, layoutInflater:Landroid/view/LayoutInflater;
    const v12, 0x7f030046

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    .end local v5           #layoutInflater:Landroid/view/LayoutInflater;
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/mms/location/LocationListAdapter;->items:Ljava/util/Vector;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nbi/map/data/Place;

    .line 60
    .local v3, currentPlaceItem:Lcom/nbi/map/data/Place;
    const v12, 0x7f0e010f

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 61
    .local v6, nameTextView:Landroid/widget/TextView;
    const v12, 0x7f0e0110

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 62
    .local v1, address1TextView:Landroid/widget/TextView;
    const v12, 0x7f0e0111

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 63
    .local v2, address2TextView:Landroid/widget/TextView;
    const v12, 0x7f0e0112

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 64
    .local v8, phoneNumberTextView:Landroid/widget/TextView;
    const v12, 0x7f0e0113

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 65
    .local v7, noSearchesTextView:Landroid/widget/TextView;
    new-instance v10, Lcom/samsung/mms/location/PlaceFormatter;

    invoke-direct {v10, v3}, Lcom/samsung/mms/location/PlaceFormatter;-><init>(Lcom/nbi/map/data/Place;)V

    .line 67
    .local v10, placeFormatter:Lcom/samsung/mms/location/PlaceFormatter;
    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 70
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/samsung/mms/location/PlaceFormatter;->getFormattedPlaceArray(Z)[Ljava/lang/String;

    move-result-object v9

    .line 71
    .local v9, placeDisplayTextArray:[Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/mms/location/LocationListAdapter;->mShowNumbering:Z

    if-eqz v12, :cond_4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, p1, 0x1

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ". "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_0
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v13, v9, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 72
    .local v11, placeTitle:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 73
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_1
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-eqz v8, :cond_3

    .line 76
    :cond_2
    const/4 v12, 0x1

    aget-object v12, v9, v12

    const/4 v13, 0x1

    invoke-static {v1, v12, v13}, Lcom/samsung/mms/location/PlaceFormatter;->setViewDisplayText(Landroid/widget/TextView;Ljava/lang/String;Z)Z

    .line 77
    const/4 v12, 0x2

    aget-object v12, v9, v12

    const/4 v13, 0x1

    invoke-static {v2, v12, v13}, Lcom/samsung/mms/location/PlaceFormatter;->setViewDisplayText(Landroid/widget/TextView;Ljava/lang/String;Z)Z

    .line 78
    invoke-virtual {v10}, Lcom/samsung/mms/location/PlaceFormatter;->getPhoneNumber()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v8, v12, v13}, Lcom/samsung/mms/location/PlaceFormatter;->setViewDisplayText(Landroid/widget/TextView;Ljava/lang/String;Z)Z

    .line 82
    :cond_3
    const v12, 0x7f0e010e

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 83
    .local v4, imageView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/mms/location/LocationListAdapter;->mPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-virtual {v12, v3}, Lcom/samsung/mms/location/PlaceDBAdapter;->findPlace(Lcom/nbi/map/data/Place;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-ltz v12, :cond_5

    .line 85
    const v12, 0x7f02026e

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    :goto_1
    new-instance v12, Lcom/samsung/mms/location/LocationListAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v3, v4}, Lcom/samsung/mms/location/LocationListAdapter$1;-><init>(Lcom/samsung/mms/location/LocationListAdapter;Lcom/nbi/map/data/Place;Landroid/widget/ImageView;)V

    invoke-virtual {v4, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-object p2

    .line 71
    .end local v4           #imageView:Landroid/widget/ImageView;
    .end local v11           #placeTitle:Ljava/lang/String;
    :cond_4
    const-string v12, ""

    goto :goto_0

    .line 89
    .restart local v4       #imageView:Landroid/widget/ImageView;
    .restart local v11       #placeTitle:Ljava/lang/String;
    :cond_5
    const v12, 0x7f02026d

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

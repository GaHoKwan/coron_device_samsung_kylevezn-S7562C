.class Lcom/samsung/mms/location/LocationMapActivity$LocationItemContextMenuListener;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/location/LocationMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationItemContextMenuListener"
.end annotation


# instance fields
.field private mPlaces:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/nbi/map/data/Place;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/mms/location/LocationMapActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/mms/location/LocationMapActivity;Ljava/util/Vector;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/nbi/map/data/Place;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2277
    .local p2, places:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/nbi/map/data/Place;>;"
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$LocationItemContextMenuListener;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$LocationItemContextMenuListener;->mPlaces:Ljava/util/Vector;

    .line 2278
    iput-object p2, p0, Lcom/samsung/mms/location/LocationMapActivity$LocationItemContextMenuListener;->mPlaces:Ljava/util/Vector;

    .line 2279
    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 12
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2283
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 2285
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v8, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-ltz v8, :cond_0

    iget v8, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-object v9, p0, Lcom/samsung/mms/location/LocationMapActivity$LocationItemContextMenuListener;->mPlaces:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-lt v8, v9, :cond_1

    .line 2306
    :cond_0
    :goto_0
    return-void

    .line 2288
    :cond_1
    iget-object v8, p0, Lcom/samsung/mms/location/LocationMapActivity$LocationItemContextMenuListener;->mPlaces:Ljava/util/Vector;

    iget v9, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v8, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nbi/map/data/Place;

    .line 2289
    .local v7, selectedPlace:Lcom/nbi/map/data/Place;
    new-instance v5, Lcom/samsung/mms/location/PlaceFormatter;

    invoke-direct {v5, v7}, Lcom/samsung/mms/location/PlaceFormatter;-><init>(Lcom/nbi/map/data/Place;)V

    .line 2290
    .local v5, placeFormatter:Lcom/samsung/mms/location/PlaceFormatter;
    invoke-virtual {v5, v11}, Lcom/samsung/mms/location/PlaceFormatter;->getFormattedPlaceArray(Z)[Ljava/lang/String;

    move-result-object v6

    .line 2292
    .local v6, placeName:[Ljava/lang/String;
    new-instance v1, Lcom/samsung/mms/location/LocationMapActivity$LocationContextMenuClickListener;

    iget-object v8, p0, Lcom/samsung/mms/location/LocationMapActivity$LocationItemContextMenuListener;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {v1, v8, v7}, Lcom/samsung/mms/location/LocationMapActivity$LocationContextMenuClickListener;-><init>(Lcom/samsung/mms/location/LocationMapActivity;Lcom/nbi/map/data/Place;)V

    .line 2294
    .local v1, itemClickListener:Lcom/samsung/mms/location/LocationMapActivity$LocationContextMenuClickListener;
    aget-object v8, v6, v10

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2295
    const/4 v2, 0x0

    .line 2297
    .local v2, itemOrder:I
    invoke-virtual {v5}, Lcom/samsung/mms/location/PlaceFormatter;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    .line 2298
    .local v4, phoneNumber:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2299
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #itemOrder:I
    .local v3, itemOrder:I
    iget-object v8, p0, Lcom/samsung/mms/location/LocationMapActivity$LocationItemContextMenuListener;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a03e5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v10, v10, v2, v8}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move v2, v3

    .line 2303
    .end local v3           #itemOrder:I
    .restart local v2       #itemOrder:I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #itemOrder:I
    .restart local v3       #itemOrder:I
    iget-object v8, p0, Lcom/samsung/mms/location/LocationMapActivity$LocationItemContextMenuListener;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a03e6

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v10, v11, v2, v8}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method

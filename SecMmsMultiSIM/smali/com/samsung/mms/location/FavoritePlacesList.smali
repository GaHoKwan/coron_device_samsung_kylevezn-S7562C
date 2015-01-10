.class public Lcom/samsung/mms/location/FavoritePlacesList;
.super Landroid/app/ListActivity;
.source "FavoritePlacesList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/mms/location/FavoritePlacesList$LocationContextMenuClickListener;,
        Lcom/samsung/mms/location/FavoritePlacesList$LocationItemContextMenuListener;,
        Lcom/samsung/mms/location/FavoritePlacesList$LocationItemClickListener;
    }
.end annotation


# static fields
.field protected static final CONTEXT_DELETE:I = 0x2

.field protected static final CONTEXT_VIEW:I = 0x1

.field private static final ID_DELETE_CONVERSATION:I = 0x1

.field private static final REQUEST_CODE_MAP_ACTIVITY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RecentPlacesList"


# instance fields
.field private favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

.field mHistory:Landroid/widget/ListView;

.field private mNoNetworkDialog:Landroid/app/AlertDialog;

.field private mbHasInitialized:Z

.field private recPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/mms/location/FavoritePlacesList;->mbHasInitialized:Z

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/mms/location/FavoritePlacesList;->mNoNetworkDialog:Landroid/app/AlertDialog;

    .line 229
    return-void
.end method

.method private refreshAdapter(Z)V
    .locals 5
    .parameter "refreshView"

    .prologue
    const/4 v4, 0x0

    .line 133
    iget-object v2, p0, Lcom/samsung/mms/location/FavoritePlacesList;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-virtual {v2}, Lcom/samsung/mms/location/PlaceDBAdapter;->getAllPlaces()Ljava/util/Vector;

    move-result-object v1

    .line 134
    .local v1, places:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/nbi/map/data/Place;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    new-instance v0, Lcom/samsung/mms/location/LocationListAdapter;

    iget-object v2, p0, Lcom/samsung/mms/location/FavoritePlacesList;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-direct {v0, p0, v2, v1, v4}, Lcom/samsung/mms/location/LocationListAdapter;-><init>(Landroid/content/Context;Lcom/samsung/mms/location/PlaceDBAdapter;Ljava/util/Vector;Z)V

    .line 139
    .local v0, locationListAdapter:Lcom/samsung/mms/location/LocationListAdapter;
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/samsung/mms/location/FavoritePlacesList$LocationItemClickListener;

    invoke-direct {v3, p0, v1}, Lcom/samsung/mms/location/FavoritePlacesList$LocationItemClickListener;-><init>(Lcom/samsung/mms/location/FavoritePlacesList;Ljava/util/Vector;)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 141
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/samsung/mms/location/FavoritePlacesList$LocationItemContextMenuListener;

    invoke-direct {v3, p0, v1}, Lcom/samsung/mms/location/FavoritePlacesList$LocationItemContextMenuListener;-><init>(Lcom/samsung/mms/location/FavoritePlacesList;Ljava/util/Vector;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 148
    .end local v0           #locationListAdapter:Lcom/samsung/mms/location/LocationListAdapter;
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a03ef

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 101
    if-ne p2, v0, :cond_0

    .line 103
    packed-switch p1, :pswitch_data_0

    .line 112
    :goto_0
    const-string v0, "RecentPlacesList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult() - unknown request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void

    .line 108
    :pswitch_0
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v1, 0x7f03003b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 58
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 60
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/mms/location/LBSManager;->init(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/mms/location/FavoritePlacesList;->mbHasInitialized:Z

    .line 61
    iget-boolean v1, p0, Lcom/samsung/mms/location/FavoritePlacesList;->mbHasInitialized:Z

    if-nez v1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v1, Lcom/samsung/mms/location/FavoritesDBAdapter;

    invoke-direct {v1, p0}, Lcom/samsung/mms/location/FavoritesDBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/mms/location/FavoritePlacesList;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    .line 65
    iget-object v1, p0, Lcom/samsung/mms/location/FavoritePlacesList;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-virtual {v1}, Lcom/samsung/mms/location/PlaceDBAdapter;->open()Lcom/samsung/mms/location/PlaceDBAdapter;

    .line 68
    new-instance v1, Lcom/samsung/mms/location/RecentsDBAdapter;

    invoke-direct {v1, p0}, Lcom/samsung/mms/location/RecentsDBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/mms/location/FavoritePlacesList;->recPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    .line 69
    iget-object v1, p0, Lcom/samsung/mms/location/FavoritePlacesList;->recPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-virtual {v1}, Lcom/samsung/mms/location/PlaceDBAdapter;->open()Lcom/samsung/mms/location/PlaceDBAdapter;

    .line 70
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a042f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/samsung/mms/location/FavoritePlacesList;->mbHasInitialized:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/samsung/mms/location/FavoritePlacesList;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-virtual {v0}, Lcom/samsung/mms/location/PlaceDBAdapter;->close()V

    .line 87
    iget-object v0, p0, Lcom/samsung/mms/location/FavoritePlacesList;->recPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    invoke-virtual {v0}, Lcom/samsung/mms/location/PlaceDBAdapter;->close()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/location/FavoritePlacesList;->mNoNetworkDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/samsung/mms/location/FavoritePlacesList;->mNoNetworkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/mms/location/FavoritePlacesList;->mNoNetworkDialog:Landroid/app/AlertDialog;

    .line 94
    :cond_1
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 95
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 121
    const/4 v0, 0x1

    .line 122
    .local v0, retVal:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 128
    :goto_0
    return v0

    .line 125
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/mms/location/FavoritePlacesList;->refreshAdapter(Z)V

    .line 78
    return-void
.end method

.method public showNoInternetDialog()V
    .locals 4

    .prologue
    .line 277
    iget-object v1, p0, Lcom/samsung/mms/location/FavoritePlacesList;->mNoNetworkDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_1

    .line 279
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 280
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

    new-instance v3, Lcom/samsung/mms/location/FavoritePlacesList$2;

    invoke-direct {v3, p0}, Lcom/samsung/mms/location/FavoritePlacesList$2;-><init>(Lcom/samsung/mms/location/FavoritePlacesList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0433

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/mms/location/FavoritePlacesList$1;

    invoke-direct {v3, p0}, Lcom/samsung/mms/location/FavoritePlacesList$1;-><init>(Lcom/samsung/mms/location/FavoritePlacesList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 293
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/location/FavoritePlacesList;->mNoNetworkDialog:Landroid/app/AlertDialog;

    .line 297
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/samsung/mms/location/FavoritePlacesList;->mNoNetworkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/samsung/mms/location/FavoritePlacesList;->mNoNetworkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

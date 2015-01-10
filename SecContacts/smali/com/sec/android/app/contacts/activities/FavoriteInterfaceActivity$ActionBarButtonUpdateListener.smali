.class final Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$ActionBarButtonUpdateListener;
.super Ljava/lang/Object;
.source "FavoriteInterfaceActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$onFavoritesActionBarUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionBarButtonUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$ActionBarButtonUpdateListener;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$ActionBarButtonUpdateListener;-><init>(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)V

    return-void
.end method


# virtual methods
.method public onDoneButtonStateUpdated(Z)V
    .locals 1
    .parameter "isEnable"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$ActionBarButtonUpdateListener;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setButtonClickable(Z)V

    .line 456
    return-void
.end method

.method public onSelectionChanged(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$ActionBarButtonUpdateListener;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$ActionBarButtonUpdateListener;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectedCount:I
    invoke-static {v0, p1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->access$202(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;I)I

    .line 462
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$ActionBarButtonUpdateListener;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    #calls: Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->updateActionBarTitle()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->access$300(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)V

    .line 464
    :cond_0
    return-void
.end method

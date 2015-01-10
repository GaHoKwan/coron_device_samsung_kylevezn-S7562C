.class final Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentListener;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Lcom/android/contacts/list/ContactTileListFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StrequentContactListFragmentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3174
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3174
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    return-void
.end method


# virtual methods
.method public onContactSelected(Landroid/net/Uri;)V
    .locals 3
    .parameter "contactUri"

    .prologue
    .line 3178
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1000(Lcom/android/contacts/activities/DialtactsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3179
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #calls: Lcom/android/contacts/activities/DialtactsActivity;->setupFavoriteDetailFragment(Landroid/net/Uri;)V
    invoke-static {v0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->access$5100(Lcom/android/contacts/activities/DialtactsActivity;Landroid/net/Uri;)V

    .line 3183
    :goto_0
    return-void

    .line 3181
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

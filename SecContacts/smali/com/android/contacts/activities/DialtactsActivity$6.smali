.class Lcom/android/contacts/activities/DialtactsActivity$6;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 843
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$6;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 848
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$6;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$3500(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "favorite_strquent_listview_state"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 849
    .local v0, bListViewState:Z
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$6;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$3500(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "favorite_strquent_listview_state"

    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 850
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$6;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$3600(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/ContactTileListFragment;

    move-result-object v1

    if-nez v0, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v1, v3}, Lcom/android/contacts/list/ContactTileListFragment;->setStreListViewState(Z)V

    .line 851
    return v2

    :cond_1
    move v1, v3

    .line 849
    goto :goto_0
.end method

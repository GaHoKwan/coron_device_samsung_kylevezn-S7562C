.class Lcom/android/contacts/list/ContactTileView$4;
.super Ljava/lang/Object;
.source "ContactTileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactTileView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactTileView;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactTileView;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileView$4;->this$0:Lcom/android/contacts/list/ContactTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 176
    const/4 v3, 0x0

    .line 178
    .local v3, pointY:I
    sget-boolean v4, Lcom/android/contacts/list/ContactTileListFragment;->callPressed:Z

    if-eqz v4, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileView$4;->this$0:Lcom/android/contacts/list/ContactTileView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/list/ContactTileView;->access$100(Lcom/android/contacts/list/ContactTileView;)Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v4, :cond_2

    .line 183
    sget v3, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPointerY:I

    .line 188
    :goto_1
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileView$4;->this$0:Lcom/android/contacts/list/ContactTileView;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactTileView;->getEnableTouchScreenHeight()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 193
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileView$4;->this$0:Lcom/android/contacts/list/ContactTileView;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v2

    .line 194
    .local v2, contactUri:Landroid/net/Uri;
    if-nez v2, :cond_3

    .line 195
    invoke-static {}, Lcom/android/contacts/list/ContactTileView;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Contact URI is null. Call cannot be established"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    .end local v2           #contactUri:Landroid/net/Uri;
    :cond_2
    sget v3, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPointerY:I

    goto :goto_1

    .line 198
    .restart local v2       #contactUri:Landroid/net/Uri;
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileView$4;->this$0:Lcom/android/contacts/list/ContactTileView;

    invoke-virtual {v4, v2}, Lcom/android/contacts/list/ContactTileView;->getPhoneNumber(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, callNumberStr:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    const-string v5, "tel"

    const/4 v6, 0x0

    invoke-static {v5, v1, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 201
    .local v0, callIntent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 202
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/contacts/list/ContactTileListFragment;->callPressed:Z

    .line 203
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileView$4;->this$0:Lcom/android/contacts/list/ContactTileView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/list/ContactTileView;->access$300(Lcom/android/contacts/list/ContactTileView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.class Lcom/android/contacts/list/ContactTileListFragment$7;
.super Ljava/lang/Object;
.source "ContactTileListFragment.java"

# interfaces
.implements Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactTileListFragment;->createLauncherShortcutWithContact()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactTileListFragment;

.field final synthetic val$parentActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactTileListFragment;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment$7;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iput-object p2, p0, Lcom/android/contacts/list/ContactTileListFragment$7;->val$parentActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 1
    .parameter "uri"
    .parameter "shortcutIntent"

    .prologue
    .line 1381
    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1382
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$7;->val$parentActivity:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1383
    return-void
.end method

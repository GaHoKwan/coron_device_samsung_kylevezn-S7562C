.class Lcom/android/contacts/vcard/ImportVCardActivity$2;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/vcard/ImportVCardActivity;->importVCard([Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

.field final synthetic val$uris:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;[Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 856
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$2;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    iput-object p2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$2;->val$uris:[Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$2;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$2;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;

    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$2;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$2;->val$uris:[Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;[Landroid/net/Uri;)V

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mVCardCacheThread:Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;
    invoke-static {v0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$202(Lcom/android/contacts/vcard/ImportVCardActivity;Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;)Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;

    .line 862
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$2;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v1, Lcom/android/contacts/vcard/NotificationImportExportListener;

    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$2;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {v1, v2}, Lcom/android/contacts/vcard/NotificationImportExportListener;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/android/contacts/vcard/ImportVCardActivity;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    .line 864
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$2;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    check-cast v0, Lcom/android/contacts/vcard/NotificationImportExportListener;

    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$2;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mShowImportedVcard:Z
    invoke-static {v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$1400(Lcom/android/contacts/vcard/ImportVCardActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/vcard/NotificationImportExportListener;->showImportedVcard(Z)V

    .line 865
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$2;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 867
    :cond_0
    return-void
.end method

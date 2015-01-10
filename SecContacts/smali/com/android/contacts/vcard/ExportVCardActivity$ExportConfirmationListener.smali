.class Lcom/android/contacts/vcard/ExportVCardActivity$ExportConfirmationListener;
.super Ljava/lang/Object;
.source "ExportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ExportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExportConfirmationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/vcard/ExportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/ExportVCardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/contacts/vcard/ExportVCardActivity$ExportConfirmationListener;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 145
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 150
    new-instance v0, Lcom/android/contacts/vcard/ExportRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/vcard/ExportVCardActivity$ExportConfirmationListener;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/vcard/ExportVCardActivity;->access$100(Lcom/android/contacts/vcard/ExportVCardActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/vcard/ExportRequest;-><init>(Landroid/net/Uri;)V

    .line 152
    .local v0, request:Lcom/android/contacts/vcard/ExportRequest;
    iget-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity$ExportConfirmationListener;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/vcard/VCardService;
    invoke-static {v1}, Lcom/android/contacts/vcard/ExportVCardActivity;->access$300(Lcom/android/contacts/vcard/ExportVCardActivity;)Lcom/android/contacts/vcard/VCardService;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/vcard/NotificationImportExportListener;

    iget-object v3, p0, Lcom/android/contacts/vcard/ExportVCardActivity$ExportConfirmationListener;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-direct {v2, v3}, Lcom/android/contacts/vcard/NotificationImportExportListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/vcard/VCardService;->handleExportRequest(Lcom/android/contacts/vcard/ExportRequest;Lcom/android/contacts/vcard/VCardImportExportListener;)V

    .line 155
    .end local v0           #request:Lcom/android/contacts/vcard/ExportRequest;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity$ExportConfirmationListener;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    #calls: Lcom/android/contacts/vcard/ExportVCardActivity;->unbindAndFinish()V
    invoke-static {v1}, Lcom/android/contacts/vcard/ExportVCardActivity;->access$400(Lcom/android/contacts/vcard/ExportVCardActivity;)V

    .line 156
    return-void
.end method

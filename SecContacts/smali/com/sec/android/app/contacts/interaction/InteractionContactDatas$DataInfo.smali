.class public Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;
.super Ljava/lang/Object;
.source "InteractionContactDatas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataInfo"
.end annotation


# instance fields
.field public contactId:Ljava/lang/String;

.field public data:Ljava/lang/String;

.field public dataId:Ljava/lang/String;

.field public dataType:I

.field public displayName:Ljava/lang/String;

.field public displayNameAlt:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public rawContactId:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

.field public typeString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;
.super Ljava/lang/Object;
.source "MiniModeAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/minimode/manager/MiniModeAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientDescriptor"
.end annotation


# instance fields
.field private mComponent:Landroid/content/ComponentName;

.field private mPolicyMode:I

.field final synthetic this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;


# direct methods
.method public constructor <init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;Landroid/content/ComponentName;I)V
    .locals 0
    .parameter
    .parameter "cn"
    .parameter "policyMode"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;->mComponent:Landroid/content/ComponentName;

    .line 57
    iput p3, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;->mPolicyMode:I

    .line 58
    return-void
.end method


# virtual methods
.method public getClientComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getClientPolicyMode()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;->mPolicyMode:I

    return v0
.end method

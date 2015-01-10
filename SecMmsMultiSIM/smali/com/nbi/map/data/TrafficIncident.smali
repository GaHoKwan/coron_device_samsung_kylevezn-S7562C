.class public Lcom/nbi/map/data/TrafficIncident;
.super Ljava/lang/Object;


# static fields
.field public static final ACCIDENT:I = 0x1

.field public static final CONGESTION:I = 0x2

.field public static final DISABLED_VEHICLE:I = 0x3

.field public static final LOW_IMPACT:I = 0x3

.field public static final MAJOR:I = 0x1

.field public static final MASS_TRANSIT:I = 0x8

.field public static final MINOR:I = 0x2

.field public static final MISC_EVENT:I = 0xb

.field public static final NO_INCIDENT:I = -0x1

.field public static final OTHER_NEWS:I = 0x9

.field public static final PLANNED_EVENT:I = 0x7

.field public static final ROAD_HAZARD:I = 0x4

.field public static final SCHEDULED_CONSTRUCTION:I = 0x6

.field public static final SEVERE:I = 0x0

.field public static final UNSCHEDULED_CONSTRUCTION:I = 0x5


# instance fields
.field private lG:Lnbisdk/jh;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/jh;

    iput-object p1, p0, Lcom/nbi/map/data/TrafficIncident;->lG:Lnbisdk/jh;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/TrafficIncident;->lG:Lnbisdk/jh;

    invoke-virtual {v0}, Lnbisdk/jh;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/TrafficIncident;->lG:Lnbisdk/jh;

    invoke-virtual {v0}, Lnbisdk/jh;->getEndTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEntryTime()J
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/TrafficIncident;->lG:Lnbisdk/jh;

    invoke-virtual {v0}, Lnbisdk/jh;->getEntryTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRoad()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/TrafficIncident;->lG:Lnbisdk/jh;

    invoke-virtual {v0}, Lnbisdk/jh;->getRoad()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSeverity()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/TrafficIncident;->lG:Lnbisdk/jh;

    invoke-virtual {v0}, Lnbisdk/jh;->getSeverity()I

    move-result v0

    return v0
.end method

.method public getStartTime()J
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/TrafficIncident;->lG:Lnbisdk/jh;

    invoke-virtual {v0}, Lnbisdk/jh;->getStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/TrafficIncident;->lG:Lnbisdk/jh;

    invoke-virtual {v0}, Lnbisdk/jh;->getType()I

    move-result v0

    return v0
.end method

let moment = require(__base + 'config/moment')

class TrekModel {
    constructor(row) {
        this.row = row;
    }

    get id() {
        return this.row.id_trek;
    }
    set id(val) {
        this.row.id_trek = val;
    }

    get reference() {
        return this.row.id_trek_1;
    }
    set reference(val) {
        this.row.id_trek_1 = val;
    }

    get label() {
        return this.row.label;
    }
    set label(val) {
        this.row.label = val;
    }

    get length() {
        return this.row.length;
    }
    set length(val) {
        this.row.length = val;
    }

    get time() {
        return this.row.time;
    }
    set time(val) {
        this.row.time = val;
    }

    get level() {
        return this.row.level;
    }
    set level(val) {
        this.row.level = val;
    }

    get done() {
        return this.row.done;
    }
    set done(val) {
        this.row.done = val;
    }

    get pathway() {
        return this.row.pathway;
    }
    set pathway(val) {
        this.row.pathway = val;
    }

    get official() {
        return this.row.official;
    }
    set official(val) {
        this.row.official = val;
    }

    get photos() {
        return this.photos_;
    }
    set photos(val) {
        this.photos_ = val;
    }

    toJSON() {
        return {
            id: this.id,
            reference: this.reference,
            label: this.label,
            length: this.length,
            time: this.time,
            level: this.level,
            done: this.done,
            pathway: this.pathway,
            official: this.official
        };
    }

    isValid() {
        return !(this.label === '' ||
            this.label === undefined ||
            this.length === '' ||
            this.length === undefined
        );
    }
}
module.exports = TrekModel
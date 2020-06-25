import { connect } from 'react-redux';
import SessionForm from './session_form'
import { login, clearErrors } from '../../actions/session_actions'

const mapStateToProps = state => {
    return {
        errors: state.errors.session,
        formType: 'login'
    }
}

const mapDispatchToProps = (dispatch) => {
    return {
        action: (user) => dispatch(login(user)),
        clearErrors: () => {
            return dispatch(clearErrors([]))
        }
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm)